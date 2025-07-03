import 'package:flutter/material.dart';
import 'dart:ui';
class CustomOverlay extends StatelessWidget {
  final Widget? icon;
  final BoxDecoration decoration;
  final double width;
  final double height;

  const CustomOverlay({
    Key? key,
    this.icon,
    this.decoration = const BoxDecoration(
      color: Color(0xff77797A),
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
    ),
    this.width = 160,
    this.height = 160,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        type: MaterialType.transparency,
        child: Center(
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor.withOpacity(0.6),
              borderRadius: const BorderRadius.all(Radius.circular(24)),
              border: Border.all(width: 1,color: Theme.of(context).colorScheme.outline),
            ), //开始颜色和结束颜色
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(24)),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15, tileMode: TileMode.mirror),
                child: icon,
              ),
            ),
          ),
        ),
    );
  }
}
