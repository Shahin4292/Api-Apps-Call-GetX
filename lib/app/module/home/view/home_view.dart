import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: ListView.builder(itemBuilder: (context, index) {
          return Contr
        }),
      ),
    );
  }
}
