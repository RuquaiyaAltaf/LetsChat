import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  EmailTextField({required this.controller, this.hintText = 'Enter your email'});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color: Colors.white), // Set text color to white
      decoration: InputDecoration(
        hintText: hintText,
        labelText: 'Email',
        labelStyle: TextStyle(color: Colors.white), // Set label color to white
        prefixIcon: Icon(Icons.email, color: Colors.white), // Set icon color to white
        border: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white), // Set border color when focused
        ),
      ),
    );
  }
}

class PasswordTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;

  PasswordTextField({required this.controller, this.hintText = 'Enter your password'});

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: _obscureText,
      style: TextStyle(color: Colors.white), // Set text color to white
      decoration: InputDecoration(
        hintText: widget.hintText,
        labelText: 'Password',
        prefixIcon: Icon(Icons.lock, color: Colors.white), // Set icon color to white
        suffixIcon: IconButton(
          icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off, color: Colors.white),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
        border: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white), // Set border color when focused
        ),
      ),
    );
  }
}
