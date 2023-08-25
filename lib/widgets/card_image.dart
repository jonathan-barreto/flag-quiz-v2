import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/stack_image.dart';

class CardImage extends StatelessWidget {
  final String image;
  final String name;

  const CardImage({
    super.key,
    required this.image,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 1,
        horizontal: 20,
      ),
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          color: const Color(0xff1B1B1B),
          borderRadius: BorderRadius.circular(10),
        ),
        child: StackImage(image: image, name: name),
      ),
    );
  }
}
