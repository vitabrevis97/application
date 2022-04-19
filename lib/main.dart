import 'package:flutter/material.dart';
import 'package:onboarding_app/boarding/data.dart';
import 'package:onboarding_app/view/login/routes/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Onboarding UI',
        debugShowCheckedModeBanner: false,
        home: OnboardingScreen());
  }
}

class Bottomnavigatorpage extends StatefulWidget {
  const Bottomnavigatorpage({Key? key}) : super(key: key);

  @override
  State<Bottomnavigatorpage> createState() => _BottomnavigatorpageState();
}

class _BottomnavigatorpageState extends State<Bottomnavigatorpage> {
  int currentIndex = 0;
  final screens = [
    const HomePage(),
    const Center(child: Text('dec')),
    const Center(child: Text('dec')),
    const Center(child: Text('dec')),
    const Center(child: Text('dec')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        backgroundColor: const Color.fromARGB(255, 241, 241, 241),
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.assignment,
              ),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
              ),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
              ),
              label: 'home')
        ],
      ),
    );
  }
}
