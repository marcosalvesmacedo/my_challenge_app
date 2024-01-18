import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String label;
  final Function()? onPressed;

  const CustomElevatedButton({
    required Key key,
    required this.onPressed,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF027353),
        fixedSize: const Size(310, 40),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(0)),
        ),
      ),
      child: Text(
        label,
        style: const TextStyle(color: Color(0xFFFFFFFF)),
      ),
    );
  }
}
