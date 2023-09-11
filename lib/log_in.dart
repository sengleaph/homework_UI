import 'package:flutter/material.dart';
import 'package:homework/category.dart';
import 'package:homework/register.dart';

class LogIn extends StatelessWidget {
  var _emailController;

  var _passwordController;

  void _loginButtonPressed(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CategoryPage()),
    );
  }

  void _registerButtonPressed(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegistrationScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Login Page'),
        // ),

        body: Center(
            child: Padding(
      padding: EdgeInsets.all(40.0),
      child: Center(
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 101, 20),
                child: Column(
                  children: [
                    Container(
                      child: RichText(
                        text: const TextSpan(
                          text: 'Log-In \n',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              fontSize: 35),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Please Login to your account.',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Gmail'),
              ),
              SizedBox(height: 15.5),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: 'Password'),
              ),
              SizedBox(height: 15.5),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () =>
                        _loginButtonPressed(context), // Pass context
                    child: Text('Login'),
                  ),
                  Text("_______________ or _______________"),
                  // Icon(Icons.facebook, size: 100, weight: 30, color: Colors.blue,), // 'weight' should be 'fontWeight'
                  // Container(
                  //   // Wrap Icon with a Container to apply BoxDecoration
                  //   decoration: BoxDecoration(
                  //     color: Colors.grey[300],
                  //     borderRadius: BorderRadius.all(
                  //         Radius.circular(50)), // Removed an extra '('
                  //     boxShadow: [
                  //       BoxShadow(
                  //         color: Colors.grey,
                  //         offset: Offset(4.0, 4.0),
                  //         blurRadius: 15.0,
                  //         spreadRadius: 1.0,
                  //       ),
                  //       BoxShadow(
                  //         color: Colors.white,
                  //         offset: Offset(-4.0, -4.0),
                  //         blurRadius: 15.0,
                  //         spreadRadius: 1.0,
                  //       ),
                  //     ],
                  //   ),
                  //     ),
                  //
                  //     Icon(Icons.facebook,size: 100, color: Colors.blue), // Added 'color'
                  // ]),
                  TextButton(
                    onPressed: () =>
                        _registerButtonPressed(context), // Pass context
                    child: Text('Register'),
                  ),
                ],
              ),
]),
      ),
      ),
    )

    );
  }
}
