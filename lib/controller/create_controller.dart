import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:register_app/controller/services/create_services.dart';
import 'package:register_app/model/create_model.dart';

class CreateProvider with ChangeNotifier {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController companynameController = TextEditingController();
  final TextEditingController gstnoController = TextEditingController();
  final TextEditingController countryidController = TextEditingController();
  final TextEditingController stateidController = TextEditingController();
  final TextEditingController districtidController = TextEditingController();
  final TextEditingController cityidController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController zipcodeController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController latlongController = TextEditingController();
  final TextEditingController useridController = TextEditingController();
  final TextEditingController usertypeController = TextEditingController();
  final TextEditingController imgController = TextEditingController();
  bool loading = false;
  String img = "dfdfd";
  String? emailValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return 'Please enter correct email';
    } else {
      return null;
    }
  }

  void adddata(BuildContext context) async {
    loading = true;
    notifyListeners();
    final CreateModel model = CreateModel(
      name: nameController.text,
      address: addressController.text,
      cityid: cityidController.text,
      companyname: companynameController.text,
      countryid: countryidController.text,
      districtid: districtidController.text,
      dob: dobController.text,
      email: emailController.text,
      gst: gstnoController.text,
      latlong: latlongController.text,
      mobile: mobileController.text,
      photo: imgController.text,
      stateid: stateidController.text,
      userid: useridController.text,
      usertypeid: usertypeController.text,
      zipcode: zipcodeController.text,
    );
    await CreatService().adddetails(model).then((value) {
      if (value != null) {
        log(value.toString());
        // clearControllers();

        Navigator.of(context).pop();
        loading = false;
        notifyListeners();
      } else {
        loading = false;
        notifyListeners();
      }
    });
  }
}
