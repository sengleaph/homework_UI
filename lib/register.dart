import 'package:flutter/material.dart';
import 'package:homework/log_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registration Form',
      home: RegistrationScreen(),
    );
  }
}

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _confirmController = TextEditingController();

  void _submitForm() {
    String username = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;
    String phoneNumber = _numberController.text;
    String confirmPassWord = _confirmController.text;


    // TODO: Perform registration logic (e.g., send data to a server)

    print('Username: $username');
    print('Email: $email');
    print('Phone number: $phoneNumber');
    print('Password: $password');
    print('Confirm Password: $confirmPassWord');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Registration Form'),
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
                            text: 'Register \n',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 45),
                            children: <TextSpan>[
                              TextSpan(text: 'Please Enter Detail To Register.', style: TextStyle( color: Colors.black54,fontSize: 16,)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(labelText: 'Username'),
                ),
                SizedBox(height: 15.5),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: 'Email'),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 15.5),
                TextField(
                  controller: _numberController,
                  decoration: InputDecoration(labelText: 'Number'),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 17.0),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(labelText: 'Password'),
                  obscureText: true,
                ),
                SizedBox(height: 24.0),
                TextField(
                  controller: _confirmController,
                  decoration: InputDecoration(labelText: 'Confirm Password'),
                  obscureText: true,
                ),
                SizedBox(height: 24.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: ElevatedButton(
                    onPressed: _submitForm, // Add onPressed here
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 45,
                      child: Center(
                        child: Text(
                          'Register',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Container(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LogIn()),
                      );
                    },
                    child: RichText(
                      text: const TextSpan(
                        text: 'already have an account? ',
                        style: TextStyle(color: Colors.black54, fontSize: 16,),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Log in.',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}


