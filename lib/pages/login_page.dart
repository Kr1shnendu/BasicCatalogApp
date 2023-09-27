import 'package:flutter/material.dart';
import 'package:hello_world/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login_image.png",
            fit: BoxFit.cover,
            ),
            SizedBox(
              height: 10.0,
            ),

            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 28,
              )
            ),

            SizedBox(
              height: 20.0,
              child: Text("Log in and explore!")
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
              child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                  hintText: "Enter Username",
                  labelText:"Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                  hintText: "Enter password",
                  labelText:"password",
                  ),
                  ),
                SizedBox(
                  height: 20.0,
                  ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                child: Text("Login"),
                style: TextButton.styleFrom(minimumSize: Size(100, 40)),
                )
              ],
            ),
              )
          ],
          ),
      )
    );
  }
}