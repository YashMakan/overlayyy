import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final VoidCallback onPressed;

  const LoginButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF1fd860),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30), // Rounded corners
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        // Adjust size
        elevation: 0, // Flat look like the screenshot
      ),
      child: const Text(
        'Login with Spotify',
        style: TextStyle(
          fontWeight: FontWeight.w900,
          color: Colors.black, // Text color
          fontSize: 16,
        ),
      ),
    );
  }
}
