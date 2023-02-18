import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final String label;
  final bool isPassword;

  const CustomTextFormField({
    super.key,
    required this.label,
    this.isPassword = false,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool obscureText;
  var passwordIcon = Icons.visibility;

  @override
  void initState() {
    super.initState();
    obscureText = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        label: Text(widget.label),
        labelStyle: const TextStyle(
          color: Color(0xff3f03e0),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff3f03e0),
          ),
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  passwordIcon,
                  color: const Color(0xff3f03e0),
                ),
                onPressed: () {
                  setState(() {
                    if (obscureText) {
                      passwordIcon = Icons.visibility_off;
                    } else {
                      passwordIcon = Icons.visibility;
                    }
                    obscureText = !obscureText;
                  });
                },
              )
            : null,
      ),
    );
  }
}
