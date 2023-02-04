import 'package:catfacts_flutter/models/breed_model.dart';
import 'package:flutter/material.dart';

class Breeds extends StatelessWidget {
  static const breedPage = "/breedPage";

  const Breeds({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Breeds"),
      ),
      body: Column(children: [
        const Text(
          "Here is the example of breeds",
          textAlign: TextAlign.center,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: BreedModel.data.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Column(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                        padding: const EdgeInsets.all(16),
                        color: Colors.green.withOpacity(0.4),
                        child: Column(
                          children: [
                            Text(BreedModel.data[index].breed),
                            Text(BreedModel.data[index].country),
                            Text(BreedModel.data[index].origin),
                            Text(BreedModel.data[index].coat),
                            Text(BreedModel.data[index].pattern)
                          ],
                        )),
                  ),
                  const SizedBox(
                    height: 16,
                  )
                ]),
              );
            },
          ),
        ),
      ]),
    );
  }
}
