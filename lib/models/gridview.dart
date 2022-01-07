import 'package:flutter/material.dart';

class GridsView extends StatelessWidget {
    final textColor;
    final text;

  const GridsView({Key? key, this.text, this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Text(
        text,
        style: TextStyle(color: textColor, fontSize: 20),
      ),
    );
  }
}
