import 'package:flutter/material.dart';

class ImageOpacity extends StatelessWidget {
  final String image;

  const ImageOpacity({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.3,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
