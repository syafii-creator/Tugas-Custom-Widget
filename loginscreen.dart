import 'package:customwidget/screen/dashboard.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  bool tampilPassword = true;

  showPassword(){
    setState(() {
      tampilPassword = !tampilPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: const Text('LOGIN',
          style: TextStyle(fontSize: 30),),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: "Username",
                labelStyle: TextStyle(color: Colors.black),
                hintText: "Inputkan Username",
                hintStyle: TextStyle(color: Colors.black)
              ),
              style: TextStyle(color: Colors.black),  //  Warna Isi
            ),
            TextField(
              obscureText: tampilPassword,
              controller: passwordController,
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.black),
                hintText: "Inputkan Password",
                hintStyle: TextStyle(color: Colors.black),
                suffix: IconButton(onPressed: () {
                  showPassword();
                  }, icon: Icon(tampilPassword ? Icons.visibility_off : Icons.visibility, color: Colors.black,)
                ),
              ),
              style: TextStyle(color: Colors.black),  //  Warna Isi
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  String username = usernameController.text;
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardScreen(username: username),
                    ),
                  );
                },
                child: Text("LOGIN"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
