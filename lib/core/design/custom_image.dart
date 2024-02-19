import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppImage2 extends StatelessWidget {
  final String path;
  final double? height, width;
  final BoxFit fit;

  const AppImage2(
      this.path, {
        super.key,
        this.height,
        this.width,
        this.fit = BoxFit.scaleDown,
      });

  @override
  Widget build(BuildContext context) {
    if (path.endsWith("svg")) {
      return SvgPicture.asset(
        path,
        height: height,
        width: width,
        fit: fit,
      );
    } else if (path.startsWith("http")) {
      return Image.network(
        path,
        height: height,
        width: width,
        fit: fit,
      );
    } else {
      return Image.asset(
        path,
        height: height,
        width: width,
        fit: fit,
      );
    }
  }
}