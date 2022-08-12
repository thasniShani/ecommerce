import 'package:flutter/material.dart';
import 'package:pjct1/login/login.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 240),
                    child: Text(
                      'Register',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 156),
                    child: Text('\n Please Login to your account'),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: 'Name'),
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: 'Email'),
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: 'Mobile Number'),
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: 'Password'),
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: 'Confirm password'),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('Register')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Already have an account?'),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                  child: const Text('Login'))
            ],
          )
        ],
      ),
    );
  }
}
