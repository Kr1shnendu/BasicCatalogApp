import 'package:flutter/material.dart';
import 'package:hello_world/utils/routes.dart';

class LoginPage extends StatefulWidget  {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changeButton = false;


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
              "Welcome $name",
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
                  onChanged: (value) {
                    name=value;
                    setState(() {
                      
                    });
                  },
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

                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton? 50 : 150,
                      height: 40,
                      
                      
                      alignment: Alignment.center,
                      child: changeButton?
                      Icon(
                        Icons.done,
                        color:Colors.white
                        ) 
                        : Text(
                        "Login",
                        style:TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                          )
                        ),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          //shape: changeButton?BoxShape.circle:BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(changeButton? 50 : 10)
                          ),
                        ),
                  ),

                  
                // ElevatedButton(
                //   onPressed: () {
                //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                //   },
                // child: Text("Login"),
                // style: TextButton.styleFrom(minimumSize: Size(100, 40)),
                // )
              ],
            ),
            )
          ],
          ),
      )
    );
  }
}