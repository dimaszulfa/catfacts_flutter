import 'package:catfacts_flutter/models/fact_model.dart';
import 'package:catfacts_flutter/screens/breeds.dart';
import 'package:catfacts_flutter/widgets/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {Breeds.breedPage: (context) => const Breeds()},
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: const Text("Cat Facts"),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Breeds.breedPage);
            },
            icon: const Icon(Icons.animation_outlined))
      ],
    );
    final appHeight = MediaQuery.of(context).size.height;
    final paddingTop = MediaQuery.of(context).padding.top;
    final bodyheightScreen =
        appHeight - paddingTop - appBar.preferredSize.height;
    final widthScreen = MediaQuery.of(context).size.width;

    TextEditingController textController = TextEditingController();
    return Scaffold(
      appBar: appBar,
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) {
                  return SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.lightGreen,
                      padding: const EdgeInsets.all(16),
                      child: Column(children: [
                        TextField(
                          decoration: const InputDecoration(
                              filled: true, fillColor: Colors.white),
                          maxLines: 3,
                          controller: textController,
                        ),
                        ElevatedButton(
                            style: ButtonStyle(backgroundColor:
                                MaterialStateProperty.resolveWith((states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors.amberAccent;
                              }
                              return Colors.blue;
                            })),
                            onPressed: () {
                              setState(() {
                                FactModel.addData(textController.text);
                                Navigator.of(context).pop();
                              });
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text("Add")));
                            },
                            child: const Text("Add data facts"))
                      ]),
                    ),
                  );
                });
          },
          child: const Icon(Icons.add)),
      body: Column(
        children: [
          HomePage(
              bodyheightScreen: bodyheightScreen, widthScreen: widthScreen),
          Expanded(
            child: ListView.builder(
              itemCount: FactModel.data.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Container(
                        width: widthScreen,
                        padding: const EdgeInsets.all(16),
                        color: Colors.green.withOpacity(0.4),
                        child: Text(
                          FactModel.data[index].facts,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    )
                  ]),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
