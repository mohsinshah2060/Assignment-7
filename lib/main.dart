import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1ABC9C), // Green background
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          width: 320,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Login Form",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF16A085),
                ),
              ),
              const SizedBox(height: 20),

              // Email or Phone field
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: "Email or Phone",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),

              // Password field
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  hintText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),

              // Forgot password
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot password?",
                    style: TextStyle(color: Color(0xFF16A085)),
                  ),
                ),
              ),

              // Login button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF16A085),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                  onPressed: () {},
                  child: const Text("Login"),
                ),
              ),
              const SizedBox(height: 15),

              // Signup text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Not a member? "),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Signup now",
                      style: TextStyle(
                        color: Color(0xFF16A085),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
