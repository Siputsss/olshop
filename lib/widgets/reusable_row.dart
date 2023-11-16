import 'package:flutter/material.dart';

class ReusableRow extends StatelessWidget {
  const ReusableRow({
    super.key,
    required this.title,
    required this.iconData,
  });

  final String title;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(title),
          leading: Icon(iconData),
        )
      ],
    );
  }
}
