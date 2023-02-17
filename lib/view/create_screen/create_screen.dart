import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:register_app/controller/create_controller.dart';
import 'package:register_app/view/const.dart';
import 'package:register_app/view/create_screen/widget/custom_textfiled.dart';
import 'package:register_app/view/home_screen.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CreateProvider>(builder: (BuildContext context, values, _) {
      return Scaffold(
          body: SafeArea(
        child: Form(
            child: Center(
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: [
              kbox20,
              Center(
                child: Text(
                  'Register Form',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              kbox10,
              CustomTextfiled(
                controller: values.useridController,
                keyboardType: TextInputType.name,
                action: TextInputAction.next,
                icon: Icons.mail,
                hint: 'Userid',
                obscure: false,
                validator: (value) => values.emailValidation(value),
              ),
              CustomTextfiled(
                controller: values.usertypeController,
                keyboardType: TextInputType.name,
                action: TextInputAction.next,
                icon: Icons.mail,
                hint: 'Usertypeid',
                obscure: false,
                validator: (value) => values.emailValidation(value),
              ),
              CustomTextfiled(
                controller: values.nameController,
                keyboardType: TextInputType.name,
                action: TextInputAction.next,
                icon: Icons.mail,
                hint: 'Name',
                obscure: false,
                validator: (value) => values.emailValidation(value),
              ),
              CustomTextfiled(
                controller: values.mobileController,
                keyboardType: TextInputType.emailAddress,
                action: TextInputAction.next,
                icon: Icons.mail,
                hint: 'Mobile',
                obscure: false,
                validator: (value) => values.emailValidation(value),
              ),
              CustomTextfiled(
                controller: values.companynameController,
                keyboardType: TextInputType.emailAddress,
                action: TextInputAction.next,
                icon: Icons.mail,
                hint: 'Company Name',
                obscure: false,
                validator: (value) => values.emailValidation(value),
              ),
              CustomTextfiled(
                controller: values.gstnoController,
                keyboardType: TextInputType.emailAddress,
                action: TextInputAction.next,
                icon: Icons.mail,
                hint: 'GST NO',
                obscure: false,
                validator: (value) => values.emailValidation(value),
              ),
              CustomTextfiled(
                controller: values.emailController,
                keyboardType: TextInputType.emailAddress,
                action: TextInputAction.next,
                icon: Icons.mail,
                hint: 'Email',
                obscure: false,
                validator: (value) => values.emailValidation(value),
              ),
              CustomTextfiled(
                controller: values.countryidController,
                keyboardType: TextInputType.emailAddress,
                action: TextInputAction.next,
                icon: Icons.mail,
                hint: 'Country Id',
                obscure: false,
                validator: (value) => values.emailValidation(value),
              ),
              CustomTextfiled(
                controller: values.stateidController,
                keyboardType: TextInputType.emailAddress,
                action: TextInputAction.next,
                icon: Icons.mail,
                hint: 'State Id',
                obscure: false,
                validator: (value) => values.emailValidation(value),
              ),
              CustomTextfiled(
                controller: values.districtidController,
                keyboardType: TextInputType.emailAddress,
                action: TextInputAction.next,
                icon: Icons.mail,
                hint: 'District Id',
                obscure: false,
                validator: (value) => values.emailValidation(value),
              ),
              CustomTextfiled(
                controller: values.cityidController,
                keyboardType: TextInputType.emailAddress,
                action: TextInputAction.next,
                icon: Icons.mail,
                hint: 'City Id',
                obscure: false,
                validator: (value) => values.emailValidation(value),
              ),
              CustomTextfiled(
                controller: values.addressController,
                keyboardType: TextInputType.emailAddress,
                action: TextInputAction.next,
                icon: Icons.mail,
                hint: 'Address',
                obscure: false,
                validator: (value) => values.emailValidation(value),
              ),
              CustomTextfiled(
                controller: values.zipcodeController,
                keyboardType: TextInputType.emailAddress,
                action: TextInputAction.next,
                icon: Icons.mail,
                hint: 'Zipcode',
                obscure: false,
                validator: (value) => values.emailValidation(value),
              ),
              CustomTextfiled(
                controller: values.dobController,
                keyboardType: TextInputType.emailAddress,
                action: TextInputAction.next,
                icon: Icons.mail,
                hint: 'DOB',
                obscure: false,
                validator: (value) => values.emailValidation(value),
              ),
              CustomTextfiled(
                controller: values.latlongController,
                keyboardType: TextInputType.emailAddress,
                action: TextInputAction.next,
                icon: Icons.mail,
                hint: 'Latlong',
                obscure: false,
                validator: (value) => values.emailValidation(value),
              ),
              CustomTextfiled(
                controller: values.imgController,
                keyboardType: TextInputType.emailAddress,
                action: TextInputAction.next,
                icon: Icons.mail,
                hint: 'image',
                obscure: false,
                validator: (value) => values.emailValidation(value),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white),
                    onPressed: () {
                      values.adddata(context);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                      log('hai');
                    },
                    child: const Text('Submit')),
              )
            ],
          ),
        )),
      ));
    });
  }
}
