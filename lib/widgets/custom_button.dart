import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const CustomButton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff3F03E0),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 64),
        shape: const StadiumBorder(),
      ),
      child: Text(text),
    );
  }
}
