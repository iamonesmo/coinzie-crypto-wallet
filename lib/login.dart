import 'package:coinzie/main.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'Global/global.dart';

class LoginSheet extends StatefulWidget {
  const LoginSheet(ctx, {Key? key}) : super(key: key);

  @override
  _LoginSheetState createState() => _LoginSheetState();
}

class _LoginSheetState extends State<LoginSheet> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  // ignore: must_call_super
  void initState() {
    getCreds();
  }

  // get email sharedPreferences
  getCreds() async {
    SharedPreferences _sp = await SharedPreferences.getInstance();
    var obtainedEmail = _sp.getString('email');
    var obtainedPassword = _sp.getString('password');
    // var checkLoggedIn = _sp.getBool('login');
    setState(() {
      finalEmail = obtainedEmail;
      password = obtainedPassword;
      // isLoggedIn = checkLoggedIn!;
    });
  }

  void validate() async {
    if (formKey.currentState!.validate()) {
      //
      if (_passwordController.text == password &&
          _emailController.text == finalEmail) {
        SharedPreferences _sp = await SharedPreferences.getInstance();
        _sp.setBool('login', true);
        Get.offAll(MainApp());
      } else {
        Fluttertoast.showToast(
            msg: "Wrong Password or Email. Try creating an acount first.",
            textColor: Colors.red,
            backgroundColor: Colors.red,
            toastLength: Toast.LENGTH_LONG);
      }
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
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Padding(
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
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: TextFormField(
                obscureText: true,
                style: TextStyle(),
                validator: validatePassword,
                controller: _passwordController,
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
                    child: Text('Login')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 
 
//  Widget buildLoginSheet(context) => P