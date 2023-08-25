import 'package:flutter/material.dart';
import 'package:quiz_app/app/controllers/continent_controller.dart';
import 'package:quiz_app/widgets/button_quiz.dart';
import 'package:quiz_app/widgets/temporizador.dart';

class Continent extends StatefulWidget {
  const Continent({super.key});

  @override
  State<Continent> createState() => _ContinentState();
}

class _ContinentState extends State<Continent> {
  ContinentController controller = ContinentController();
  late int indice;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final List<dynamic> arguments =
        ModalRoute.of(context)!.settings.arguments as List<dynamic>;
    indice = arguments[0] as int;
    controller.getData(indice);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B1B1B),
      appBar: AppBar(
        title: const Text('BandFlag Quiz'),
        centerTitle: true,
        backgroundColor: const Color(0xff1B1B1B),
      ),
      body: controller.isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              children: [
                const Center(child: Temporizador()),
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                          width: 250,
                          height: 150,
                          child: Image.network(
                            'http://192.168.0.109/flag/images/${controller.data!.countryData!.flagImage}',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ButtonQuiz(text: controller.data!.countries![0]),
                        ButtonQuiz(text: controller.data!.countries![1]),
                        ButtonQuiz(text: controller.data!.countries![2]),
                        ButtonQuiz(text: controller.data!.countries![3]),
                      ],
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
