import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Pinned extends SingleChildRenderObjectWidget {
  final Pin hPin;
  final Pin vPin;

  const Pinned.fromPins(this.hPin, this.vPin, {required Widget child, Key? key})
      : super(key: key, child: child);

  Pinned({
    Key? key,
    double? left,
    double? leftFraction,
    double? right,
    double? rightFraction,
    double? width,
    double? horizontalMiddle,
    double? top,
    double? topFraction,
    double? bottom,
    double? bottomFraction,
    double? height,
    double? verticalMiddle,
    required Widget child,
  }) : this.fromPins(
            Pin(
              start: left,
              startFraction: leftFraction,
              end: right,
              endFraction: rightFraction,
              size: width,
              middle: horizontalMiddle,
            ),
            Pin(
              start: top,
              startFraction: topFraction,
              end: bottom,
              endFraction: bottomFraction,
              size: height,
              middle: verticalMiddle,
            ),
            child: child,
            key: key);

  Pinned.fromSize({
    Key? key,
    required Rect bounds,
    required Size size,
    bool pinLeft = false,
    bool pinRight = false,
    bool pinTop = false,
    bool pinBottom = false,
    bool fixedWidth = false,
    bool fixedHeight = false,
    required Widget child,
  }) : this.fromPins(
            Pin(
              size: fixedWidth ? bounds.width : null,
              start: pinLeft ? bounds.left : null,
              end: pinRight ? size.width - bounds.right : null,
              startFraction:
                  !pinLeft && !fixedWidth ? bounds.left / size.width : null,
              endFraction: !pinRight && !fixedWidth
                  ? (size.width - bounds.right) / size.width
                  : null,
              middle: fixedWidth && !pinLeft && !pinRight
                  ? bounds.left / (size.width - bounds.width)
                  : null,
            ),
            Pin(
              size: fixedHeight ? bounds.height : null,
              start: pinTop ? bounds.top : null,
              end: pinBottom ? size.height - bounds.bottom : null,
              startFraction:
                  !pinTop && !fixedHeight ? bounds.top / size.height : null,
              endFraction: !pinBottom && !fixedHeight
                  ? (size.height - bounds.bottom) / size.height
                  : null,
              middle: fixedHeight && !pinTop && !pinBottom
                  ? bounds.top / (size.height - bounds.height)
                  : null,
            ),
            child: child,
            key: key);

  @override
  RenderShiftedBox createRenderObject(BuildContext context) {
    return RenderPinned(
      hPin: hPin,
      vPin: vPin,
    );
  }

  @override
  void updateRenderObject(BuildContext context, RenderPinned renderObject) {
    renderObject
      ..hPin = hPin
      ..vPin = vPin;
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return "Pinned(\n  hPin: $hPin,\n  vPin: $vPin\n)";
  }
}

@immutable
class Pin {
  final double? start;
  final double? startFraction;
  final double? end;
  final double? endFraction;
  final double? size;
  final double? middle;

  const Pin(
      {this.start,
      this.startFraction,
      this.end,
      this.endFraction,
      this.size,
      this.middle})
      : assert(!(start != null && startFraction != null),
            "Cannot have both start and startFraction values."),
        assert(!(end != null && endFraction != null),
            "Cannot have both end and endFraction values."),
        assert(!(middle != null && size == null),
            "A size value is required with a middle value."),
        assert(
            !(middle != null &&
                (start ?? startFraction ?? end ?? endFraction) != null),
            "Only a size value can be used with a middle value."),
        assert(
            !(size != null &&
                (start ?? startFraction) != null &&
                (end ?? endFraction) != null),
            "Cannot have both start and end values when a size value is used.");

  /// Compares two Pins for equality.
  @override
  bool operator ==(dynamic other) {
    return other is Pin &&
        other.start == start &&
        other.startFraction == startFraction &&
        other.end == end &&
        other.endFraction == endFraction &&
        other.size == size &&
        other.middle == middle;
  }

  @override
  int get hashCode =>
      hashValues(start, startFraction, end, endFraction, size, middle);

  @override
  String toString() {
    return "Pin(start: $start, startFraction: $startFraction, end: $end, endFraction: $endFraction, size: $size, middle: $middle, )";
  }
}

class RenderPinned extends RenderShiftedBox {
  Pin _hPin;
  Pin _vPin;

  RenderPinned({required Pin hPin, required Pin vPin, RenderBox? child})
      : _hPin = hPin,
        _vPin = vPin,
        super(child);

  _Span _calculateSpanFromPin(Pin pin, double maxSize) {
    double start = 0.0, end = maxSize;

    // copy all the values locally to support null-safety:
    double? pinSize = pin.size, pinMiddle = pin.middle;
    double? pinStartF = pin.startFraction, pinEndF = pin.endFraction;
    double? pinStart = pinStartF != null ? pinStartF * maxSize : pin.start;
    double? pinEnd = pinEndF != null ? pinEndF * maxSize : pin.end;

    if (pinStart != null && pinEnd != null) {
      // Pinned on both sides.
      start = pinStart;
      end = maxSize - pinEnd;
    } else if (pinSize != null && pinStart != null) {
      // Pinned to start
      start = min(maxSize - pinSize, pinStart);
      end = start + pinSize;
    } else if (pinSize != null && pinEnd != null) {
      // Pinned to end
      end = max(pinSize, maxSize - pinEnd);
      start = end - pinSize;
    } else if (pinMiddle != null && pinSize != null) {
      // Not pinned at all, use middle to position
      start = pinMiddle * (maxSize - pinSize);
      end = start + pinSize;
    }
    return _Span(start, end);
  }

  Pin get hPin => _hPin;
  set hPin(Pin pin) {
    if (pin == _hPin) {
      return;
    }
    _hPin = pin;
    markNeedsLayout();
  }

  Pin get vPin => _vPin;
  set vPin(Pin pin) {
    if (pin == _vPin) {
      return;
    }
    _vPin = pin;
    markNeedsLayout();
  }

  @override
  void performLayout() {
    // copy all the values locally to support null-safety:
    RenderBox? kid = child;

    if (kid == null) {
      size = constraints.constrain(const Size(0, 0));
      return;
    }
    double maxW = constraints.maxWidth;
    double maxH = constraints.maxHeight;
    _Span hSpan = _calculateSpanFromPin(_hPin, maxW);
    _Span vSpan = _calculateSpanFromPin(_vPin, maxH);

    final BoxConstraints innerConstraints =
        BoxConstraints.expand(width: hSpan.size, height: vSpan.size);
    kid.layout(innerConstraints);
    final BoxParentData childParentData = kid.parentData as BoxParentData;
    childParentData.offset = Offset(hSpan.start, vSpan.start);

    size = Size(maxW, maxH);
  }
}

@immutable
class _Span {
  final double start;
  final double end;

  const _Span(this.start, this.end);

  double get size => max(0, end - start);

  @override
  String toString() {
    return "_Span(start: $start, end: $end, )";
  }
}
