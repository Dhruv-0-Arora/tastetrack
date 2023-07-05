import 'package:tastetrack/XDUtil/page_link.dart';

class TransitionUtility {
  final String start;
  final String target;

  TransitionUtility({required this.start, required this.target});

  final order = [
    'home',
    'plus',
    'discover',
    'settings',
  ];

  int _getStartIndex() {
    return order.indexOf(start);
  }

  int _getTargetIndex() {
    return order.indexOf(target);
  }

  bool _isLeft() {
    return _getStartIndex() > _getTargetIndex();
  }

  bool _isRight() {
    return _getStartIndex() < _getTargetIndex();
  }

  LinkTransition getTransition() {
    if (_isLeft()) {
      return LinkTransition.SlideLeft;
    } else if (_isRight()) {
      return LinkTransition.SlideRight;
    }
    return LinkTransition.SlideLeft;
  }
}
