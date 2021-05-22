import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "Kayt",
          style: TextStyle(
            color: Colors.white,
            fontSize: 64,
            fontWeight: FontWeight.bold,
            height: 1,
          ),
        ),
        Text(
          "by krungkay",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
