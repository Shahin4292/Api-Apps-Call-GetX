import 'package:api_call_getx/app/module/home/controller/home_controller.dart';
import 'package:api_call_getx/app/widget/contact_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.refresh)),
        ],
        centerTitle: true,
        title: const Text("Home View"),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return ContactCard(
                name: '',
                email: '',
                address: '',
                city: '',
                country: '',
              );
            }),
      ),
    );
  }
}
