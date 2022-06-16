import 'package:flutter/material.dart';

class DmsTextField extends StatelessWidget {
  final String labelText;
  const DmsTextField({
    required this.labelText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: InputDecoration(
              border: const UnderlineInputBorder(),
              labelText: labelText,
            ),
          ),
        ],
      ),
    );
  }
}
