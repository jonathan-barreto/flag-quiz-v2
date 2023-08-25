import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/widgets/image_opacity.dart';

class StackImage extends StatelessWidget {
  final String image;
  final String name;

  const StackImage({
    super.key,
    required this.image,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: ImageOpacity(
            image: image,
          ),
        ),
        Center(
          child: Text(
            name,
            style: GoogleFonts.prata(
              textStyle: const TextStyle(
                fontSize: 40,
                color: Colors.white,
                letterSpacing: .5,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
