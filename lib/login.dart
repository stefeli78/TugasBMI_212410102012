import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  final String username;
  final String password;

  LoginPage({required this.username, required this.password});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _usernameController.text = widget.username;
    _passwordController.text = widget.password;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 221, 221),
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/image/12.png")),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                '- LOGIN -',
                style: TextStyle(
                  fontSize: 24,
                  height: 0.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15.0),
            ElevatedButton(
              onPressed: () {
                if (_usernameController.text == widget.username &&
                    _passwordController.text == widget.password) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BMICalculator(
                              username: _usernameController.text,
                              password: _passwordController.text,
                            )),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Error'),
                      content: Text('Pasword dan email salah'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('OK'),
                        ),
                      ],
                    ),
                  );
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
