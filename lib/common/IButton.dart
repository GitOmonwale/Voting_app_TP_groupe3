import 'package:flutter/material.dart';

class IButton extends StatelessWidget {
 final String text;
 final  void Function()? onPressed;

    IButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).primaryColor,
            foregroundColor: Colors.white),
        onPressed:onPressed,
        child: Text(
          "$text".toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ));
  }
}