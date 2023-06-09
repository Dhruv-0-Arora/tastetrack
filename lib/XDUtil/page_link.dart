import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

/// Enables Adobe XD prototype tap interactions / navigation.
enum LinkTrigger {
  tap,
  drag,
}

enum LinkTransition {
  fade,
  slideLeft,
  slideRight,
  slideUp,
  slideDown,
  pushUp,
  pushDown,
  pushLeft,
  pushRight
}

class PageLinkInfo {
  final Function? pageBuilder;
  final LinkTrigger trigger;
  final LinkTransition transition;
  final Curve? ease;
  final double? duration;

  PageLinkInfo(
      {this.pageBuilder,
      this.trigger = LinkTrigger.tap,
      this.transition = LinkTransition.fade,
      this.ease,
      this.duration});
}

class PageLink extends StatelessWidget {
  final List<PageLinkInfo> links;
  final Widget child;

  const PageLink({Key? key, required this.links, required this.child})
      : super(key: key);

  void _handlePageLinkTriggered(BuildContext context, PageLinkInfo info) {
    // copy all the values locally to support null-safety:
    Function? pageBuilder = info.pageBuilder;
    double? duration = info.duration;
    Curve? ease = info.ease;

    if (pageBuilder == null) {
      // Go back.
      Navigator.pop(context);
      return;
    }

    Route route;
    switch (info.transition) {
      case LinkTransition.slideUp:
        route = _RouteFactory.slide(
            pageBuilder, duration, ease, const Offset(0, 1));
        break;
      case LinkTransition.slideDown:
        route = _RouteFactory.slide(
            pageBuilder, duration, ease, const Offset(0, -1));
        break;
      case LinkTransition.slideLeft:
        route = _RouteFactory.slide(
            pageBuilder, duration, ease, const Offset(1, 0));
        break;
      case LinkTransition.slideRight:
        route = _RouteFactory.slide(
            pageBuilder, duration, ease, const Offset(-1, 0));
        break;
      case LinkTransition.pushUp:
        route =
            _RouteFactory.push(pageBuilder, duration, ease, const Offset(0, 1));
        break;
      case LinkTransition.pushDown:
        route = _RouteFactory.push(
            pageBuilder, duration, ease, const Offset(0, -1));
        break;
      case LinkTransition.pushLeft:
        route =
            _RouteFactory.push(pageBuilder, duration, ease, const Offset(1, 0));
        break;
      case LinkTransition.pushRight:
        route = _RouteFactory.push(
            pageBuilder, duration, ease, const Offset(-1, 0));
        break;
      case LinkTransition.fade:
      default:
        route = _RouteFactory.fade(pageBuilder, duration, ease);
    }
    Navigator.of(context).push(route);
  }

  // If a tap link exists, fire it off.
  void _handleTap(BuildContext context) {
    PageLinkInfo? info =
        links.firstWhereOrNull((i) => i.trigger == LinkTrigger.tap);
    if (info != null) {
      _handlePageLinkTriggered(context, info);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(child: child, onTapUp: (d) => _handleTap(context));
  }
}

class _RouteFactory {
  static const double defaultDuration = 0.35;
  static const Curve defaultEase = Curves.easeOut;

  static Route fade(Function childBuilder, [double? duration, Curve? ease]) {
    return PageRouteBuilder(
      transitionDuration: Duration(
          milliseconds: ((duration ?? defaultDuration) * 1000).round()),
      pageBuilder: (context, animation, secondaryAnimation) => childBuilder(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: Tween<double>(begin: 0, end: 1).animate(
            CurvedAnimation(parent: animation, curve: ease ?? defaultEase),
          ),
          child: child,
        );
      },
    );
  }

  static Route push(Function childBuilder,
      [double? duration,
      Curve? ease,
      Offset startOffset = const Offset(2, 0)]) {
    return slide(childBuilder, duration, ease, startOffset, true);
  }

  static Route slide(Function childBuilder,
      [double? duration,
      Curve? ease,
      Offset startOffset = const Offset(1, 0),
      bool pushOldView = false]) {
    return PageRouteBuilder(
      transitionDuration: Duration(
          milliseconds: ((duration ?? defaultDuration) * 1000).round()),
      pageBuilder: (context, animation, secondaryAnimation) => childBuilder(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // Create slide-in transition
        SlideTransition inTransition = SlideTransition(
          position: Tween<Offset>(begin: startOffset, end: Offset.zero).animate(
              CurvedAnimation(parent: animation, curve: ease ?? defaultEase)),
          child: child,
        );

        // Maybe create slideOut transition
        SlideTransition? outTransition;
        if (pushOldView) {
          // Flip the offset, so we end in the reverse position from where we started
          Offset endOffset = Offset(startOffset.dx * -1, startOffset.dy * -1);
          outTransition = SlideTransition(
            position: Tween<Offset>(begin: Offset.zero, end: endOffset).animate(
                CurvedAnimation(
                    parent: secondaryAnimation, curve: ease ?? defaultEase)),
            child: inTransition,
          );
        }
        // Return 'out' if we have one, fallback to just in
        return outTransition ?? inTransition;
      },
    );
  }
}
