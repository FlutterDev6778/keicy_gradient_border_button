library keicy_gradient_border_button;

import 'package:flutter/material.dart';

class KeicyGradientBorderButton extends StatelessWidget {
  final Gradient? gradient;
  final Color? color;
  final String? text;
  final TextStyle? textStyle;
  final Widget? child;
  final double borderWidth;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final double borderRadius;
  final Function()? onPressed;
  final Function()? onLongPress;

  const KeicyGradientBorderButton({
    Key? key,
    @required this.gradient,
    @required this.color,
    this.text,
    this.textStyle,
    this.child,
    this.borderWidth = 1,
    this.width,
    this.height,
    this.padding,
    this.borderRadius = 0,
    this.onPressed,
    this.onLongPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(borderWidth),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), gradient: gradient),
        child: Container(
          padding: padding,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: child ??
              Center(
                child: Text(text ?? "", style: textStyle),
              ),
        ),
      ),
    );
  }
}
