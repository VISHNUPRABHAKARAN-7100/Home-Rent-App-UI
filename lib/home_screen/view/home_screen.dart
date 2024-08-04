import 'package:flutter/material.dart';
import 'package:home_rent_ui/home_screen/view/widgets/drawer.dart';
import 'package:home_rent_ui/home_screen/view/widgets/home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          DrawerScreen(),
          Home(),
        ],
      ),
    );
  }
}
