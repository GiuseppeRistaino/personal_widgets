import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const SizedBox(height: 60),

              const Text(
                "V",
                style: TextStyle(
                  fontSize: 120,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 60),

              _buildTextField(
                hint: "Enter Email",
                icon: Icons.email_outlined,
              ),

              const SizedBox(height: 25),

              _buildTextField(
                hint: "Enter Password",
                icon: Icons.lock_outline,
                isPassword: true,
              ),

              const SizedBox(height: 25),

              _buildTextField(
                hint: "Confirm Password",
                icon: Icons.lock_outline,
                isPassword: true,
              ),

              const SizedBox(height: 60),

              _outlineButton(
                text: "Register",
                onPressed: () {},
              ),

              const SizedBox(height: 20),

              _outlineButton(
                text: "Back to Login",
                onPressed: () {
                  Navigator.pop(context);
                },
              ),

              const Spacer(),
              /*
              const Icon(
                Icons.fingerprint,
                size: 70,
                color: Colors.white54,
              ),
              */
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String hint,
    required IconData icon,
    bool isPassword = false,
  }) {
    return TextField(
      obscureText: isPassword,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.white54),
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.white54),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white54),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }

  Widget _outlineButton({
    required String text,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.white54),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
