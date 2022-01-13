import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  String invalidCred = "";
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  get style => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WeApp'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(5),
              child: const Text(
                'Hello Again!',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              ),
            ),
            Center(
              child: Text(
                invalidCred,
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 15,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                "Welcome Back you've been Missed!",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter username',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              style: style,
              child: const Text('Recovery Password'),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                style: style,
                child: const Text('Sign-in'),
                onPressed: () {
                  if (nameController.text == "" ||
                      passwordController.text == "") {
                    invalidCred = "username/password field can't be empty";
                    setState(() {});
                  } else if (passwordController.text.length < 8 ||
                      nameController.text.length < 4) {
                    invalidCred = "Invalid username/password";
                    setState(() {});
                  } else {
                    invalidCred = "";
                    setState(() {});
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const SecondScreen(),
                    //   ),
                    // );
                  }
                },
              ),
            ),
            Row(
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  style: style,
                  child: const Text(
                    'Sign up',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
