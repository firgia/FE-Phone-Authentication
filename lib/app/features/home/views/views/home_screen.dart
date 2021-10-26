library home_view;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phone_authentication/app/features/home/controllers/home_controller.dart';

part '../components/profile.dart';
part '../components/drawer.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        leading: IconButton(
          color: Colors.grey,
          icon: Icon(Icons.menu),
          onPressed: () => _key.currentState!.openDrawer(),
        ),
      ),
      body: Column(
        children: [
          _Profile(),
        ],
      ),
      drawer: _Drawer(),
    );
  }
}
