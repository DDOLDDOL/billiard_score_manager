import 'package:flutter/material.dart';

class RoundBorderContentWrapper extends StatelessWidget {
  final Color? backgroundColor;
  final BoxBorder? border;
  final double? borderRoundness;
  final Widget? child;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double? width;

  const RoundBorderContentWrapper({
    Key? key,
    this.backgroundColor = Colors.white,
    this.border,
    this.borderRoundness = 10,
    this.child,
    this.height,
    this.margin,
    this.padding = const EdgeInsets.all(10),
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: _decoration,
      child: child,
    );
  }

  BoxDecoration get _decoration {
    return BoxDecoration(
      color: backgroundColor,
      // border: border ?? Border.all(color: Colors.grey.shade500, width: 0.2),
      borderRadius: BorderRadius.circular(borderRoundness!),
      boxShadow: [
        BoxShadow(
          // offset: const Offset(6, 4),
          blurRadius: 5,
          color: Colors.grey.shade500,
        ),
      ],
    );
  }
}