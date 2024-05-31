import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TitleButtonRoute {
  final String name;
  final Map<String, String> params;

  const TitleButtonRoute(this.name, this.params);
}

class TitleButton {
  final Icon icon;
  final bool isBack;
  final TitleButtonRoute? route;
  final VoidCallback? onPressed;

  TitleButton({
    required this.icon,
    this.isBack = false,
    this.route,
    this.onPressed,
  });

  bool _isDisabled(BuildContext context) {
    if (isBack && context.canPop()) {
      return false;
    } else if (route != null) {
      return false;
    } else if (onPressed != null) {
      return false;
    }
    return true;
  }

  void _onPressed(BuildContext context) {
    if (isBack && context.canPop()) {
      context.pop();
    } else if (route != null) {
      context.goNamed(route!.name, pathParameters: route!.params);
    } else if (onPressed != null) {
      onPressed!();
    }
  }

  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: _isDisabled(context) ? null : () => _onPressed(context),
      icon: icon,
    );
  }
}

class PageTitle extends StatelessWidget {
  final String title;
  final double height;
  final TitleButton? left;
  final TitleButton? right;
  final bool externalButtons;
  final double fontSize;
  final double minFontSize;
  final int maxLines;

  const PageTitle(
    this.title, {
    super.key,
    this.height = 48,
    this.left,
    this.right,
    this.externalButtons = false,
    this.fontSize = 36,
    this.minFontSize = 10,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    if (left == null && right == null && !externalButtons) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: _buildTitle(context),
      );
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: left?.build(context) ?? const SizedBox(width: 40),
        ),
        const SizedBox(width: 16),
        Expanded(child: _buildTitle(context)),
        const SizedBox(width: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: right?.build(context) ?? const SizedBox(width: 40),
        ),
      ],
    );
  }

  Widget _buildTitle(BuildContext context) {
    return SizedBox(
      height: height,
      child: Center(
        child: AutoSizeText(
          title,
          minFontSize: minFontSize,
          maxLines: maxLines,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: fontSize),
        ),
      ),
    );
  }
}
