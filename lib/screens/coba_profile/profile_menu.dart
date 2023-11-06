import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key,
    required this.text,
    required this.icon,
    required this.press,
  });

  final String text;
  final IconData icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: SizedBox(
        height: 50,
        child: ElevatedButton(
          onPressed: press,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(const Color(0xFFFD725A)),
          ),
          child: Row(
            children: [
              Icon(icon),
              const SizedBox(width: 20),
              Expanded(
                child: Text(text),
              ),
              const Icon(Icons.arrow_forward_ios)
            ],
          ),
        ),
      ),
    );
  }
}
