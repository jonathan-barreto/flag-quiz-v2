import 'package:flutter/material.dart';
import 'package:quiz_app/app/controllers/home_page_controller.dart';
import 'package:quiz_app/widgets/card_image.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomePageController controller = HomePageController();
    return Scaffold(
      backgroundColor: const Color(0xff1B1B1B),
      appBar: AppBar(
        title: const Text('BandFlag Quiz'),
        centerTitle: true,
        backgroundColor: const Color(0xff1B1B1B),
      ),
      body: ListView.separated(
        itemCount: controller.continents.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                '/continent',
                arguments: [index],
              );
            },
            child: CardImage(
              image: controller.continents[index]['image'],
              name: controller.continents[index]['name'],
            ),
          );
        },
      ),
    );
  }
}
