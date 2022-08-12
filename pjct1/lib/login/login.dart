import 'package:flutter/material.dart';
import 'package:pjct1/profile/profile.dart';
import 'package:pjct1/signUp/signup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height - 650,
            ),
            const Text(
              'Login ',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const Text(
              '\n Please Login to your account',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              decoration: InputDecoration(hintText: 'Email / MobileNumber'),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                suffix: TextButton(
                    onPressed: () {}, child: const Text("forgot password?")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 90, right: 90),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfilePage()));
                },
                child: const Text('Login'),
              ),
            ),
            Row(
              children: const [
                SizedBox(
                  height: 35,
                ),
                Expanded(child: Divider()),
                Text(
                  'OR',
                  style: TextStyle(color: Colors.grey),
                ),
                Expanded(child: Divider())
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.facebook)),
                const SizedBox(
                  width: 15,
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.whatsapp)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Dont you have an account?'),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpScreen()));
                    },
                    child: const Text('Register'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
