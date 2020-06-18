import 'package:flutter/material.dart';

class ChatScrollBehavior extends ScrollBehavior {
  final bool showLeading;
  final bool showTrailing;

  ChatScrollBehavior({
    this.showLeading: false,
    this.showTrailing: false,
  });

  @override
  Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) {
    return GlowingOverscrollIndicator(
      showLeading: showLeading,
      showTrailing: showTrailing,
      child: child,
      axisDirection: axisDirection,
      color: Theme.of(context).primaryColor,
    );
  }
}