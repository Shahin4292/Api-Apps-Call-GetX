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
            IconButton(
                onPressed: () {
                  controller.fetchContact();
                },
                icon: const Icon(Icons.refresh)),
          ],
          centerTitle: true,
          title: const Text("Home View"),
        ),
        body: FutureBuilder(
          future: controller.fetchContact(),
          builder: (ctx, snapshot) {
            if (snapshot.hasData) {
              return Obx(() => ListView.builder(
                  itemCount: controller.contact.value?.profiles?.length,
                  itemBuilder: (context, index) {
                    return Obx(() => ContactCard(
                          name:
                              controller.contact.value?.profiles?[index].name ??
                                  '',
                          email: controller
                                  .contact.value?.profiles?[index].email ??
                              '',
                          address: controller
                                  .contact.value?.profiles?[index].address ??
                              '',
                          city:
                              controller.contact.value?.profiles?[index].city ??
                                  '',
                          country: controller
                                  .contact.value?.profiles?[index].country ??
                              '',
                        ));
                  }));
            } else if (snapshot.hasError) {
              return const Center(child: Text("Have an error"));
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
