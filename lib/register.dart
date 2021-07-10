import 'package:coinzie/Global/global.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'main.dart';

class SignupSheet extends StatefulWidget {
  const SignupSheet(ctx, {Key? key}) : super(key: key);

  @override
  _SignupSheetState createState() => _SignupSheetState();
}

class _SignupSheetState extends State<SignupSheet> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void validate() async {
    if (formKey.currentState!.validate()) {
      //
      final SharedPreferences _sharedPreferences =
          await SharedPreferences.getInstance();
      _sharedPreferences.setString('email', _emailController.text);
      _sharedPreferences.setString('fullName', _nameController.text);
      _sharedPreferences.setString('password', _passwordController.text);
      _sharedPreferences.setBool('login', true);
      setState(() {
        isLoggedIn = true;
      });
      Get.offAll(MainApp());
    }
  }

  String? validatePassword(value) {
    if (value == null || value.isEmpty) {
      return "Required*";
    } else if (value.length < 6) {
      return "Should be atleast 6 Characters";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Form(
        autovalidateMode: AutovalidateMode.always,
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              validator:
                  MultiValidator([RequiredValidator(errorText: "Required*")]),
              controller: _nameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'name'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: TextFormField(
                validator: MultiValidator([
                  EmailValidator(errorText: "Not A Valid Email"),
                  RequiredValidator(errorText: "Required*")
                ]),
                controller: _emailController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(126, 87, 194, 1.0))),
                    labelText: 'email'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: TextFormField(
                obscureText: true,
                controller: _passwordController,
                validator: validatePassword,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(126, 87, 194, 1.0))),
                    labelText: 'password'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.tealAccent.shade400),
                    ),
                    onPressed: validate,
                    child: Text('Register')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
