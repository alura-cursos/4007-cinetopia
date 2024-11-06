import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: (){}, child: Ink(
            decoration: BoxDecoration(
              color: Color(0xFFB370FF),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              children: <Widget>[
                Text("Quero começar!"),
                Icon(Icons.arrow_forward),
              ],
            ),
          ));
  }
}