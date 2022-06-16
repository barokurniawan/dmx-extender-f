import 'package:flutter/material.dart';

class DmsTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController? ctrl;
  const DmsTextField({
    required this.labelText,
    this.ctrl,
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
            controller: ctrl,
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
