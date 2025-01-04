import 'package:assessment1/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.network(
                    height: 150,
                    "https://www.trustedreviews.com/wp-content/uploads/sites/54/2022/12/WhatsApp-920x586.png",
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    hintText: "Phone Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Passkey",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {
                    final username = usernameController.text;
                    final password = passwordController.text;

                    if (username == "7306817636" && password == "314159") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WhatsAppUI(),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Invalid phone number or passkey"),
                        ),
                      );
                    }
                  },
                  child: Text("Log In"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Create a new account",
                  style: TextStyle(color: Colors.greenAccent),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
