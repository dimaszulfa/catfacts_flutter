import 'package:catfacts_flutter/models/breed_model.dart';
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
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {Breeds.breedPage: (context) => Breeds()},
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: const Text("Cat Facts"),
    );
    final appHeight = MediaQuery.of(context).size.height;
    final paddingTop = MediaQuery.of(context).padding.top;
    final bodyheightScreen =
        appHeight - paddingTop - appBar.preferredSize.height;
    final widthScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: appBar,
      body: Column(
        children: [
          HomePage(
              bodyheightScreen: bodyheightScreen, widthScreen: widthScreen),
          Expanded(
            child: ListView.builder(
              itemCount: BreedModel.data.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Container(
                        width: widthScreen,
                        padding: EdgeInsets.all(16),
                        color: Colors.green.withOpacity(0.4),
                        child: Text(
                          BreedModel.data[index].facts,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
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
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.animation_outlined), label: "Breeds"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavbar,
      ),
    );
  }

  void _changeSelectedNavbar(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.of(context).pushNamed(Breeds.breedPage);
  }
}
