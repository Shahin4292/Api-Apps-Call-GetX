import 'dart:convert';

import 'package:api_call_getx/app/data/constants/apis.dart';
import 'package:api_call_getx/app/data/models/contact_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {

  Rx<ContactModel?> contact = Rx(null);



  Future<ContactModel> fetchContact() async {
    final response = await http.get(Uri.parse(api));
    print(response.body);

    try {
      final model = ContactModel.fromJson(jsonDecode(response.body));
      contact.value = model;
      return model;
    } catch (e) {
      print(e);
      throw e;
    }
  }
}
