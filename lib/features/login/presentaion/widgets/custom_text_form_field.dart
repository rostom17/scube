import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.inputController,
    required this.hintText,
    this.isPassowrd = false,
  });

  final TextEditingController inputController;
  final String hintText;
  final bool isPassowrd;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obsecureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.inputController,
      obscureText: widget.isPassowrd && _obsecureText,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Color(0xFF5E5E5E),
        ),
        suffixIcon: widget.isPassowrd
            ? IconButton(
                onPressed: () {
                  setState(() {
                    _obsecureText = !_obsecureText;
                  });
                },
                icon: _obsecureText
                    ? Icon(CupertinoIcons.eye)
                    : Icon(CupertinoIcons.eye_slash),
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Color(0xFFB9C6D6), width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Color(0xFFB9C6D6), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Color(0xFFB9C6D6), width: 1),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
      ),
    );
  }
}
