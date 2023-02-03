import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../models/breed_model.dart';

class Breeds extends StatelessWidget {
  static const breedPage = "breedPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Breeds"),
      ),
      body: ListView.builder(
        itemCount: BreedModel.data.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(16),
            child: Column(children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  padding: EdgeInsets.all(16),
                  color: Colors.green.withOpacity(0.4),
                  child: Text(
                    BreedModel.data[index].facts,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              )
            ]),
          );
        },
      ),
    );
  }
}
