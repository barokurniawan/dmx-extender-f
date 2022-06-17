import 'package:dms_extender_flutter/widget/dmstextfield.dart';
import 'package:flutter/material.dart';

class FormFetchResult extends StatelessWidget {
  FormFetchResult({Key? key}) : super(key: key);

  final TextEditingController txtTotalRow = TextEditingController();
  final TextEditingController txtCompCode = TextEditingController();
  final TextEditingController txtBusDate = TextEditingController();
  final TextEditingController txtPstDate = TextEditingController();
  final TextEditingController txtSySource = TextEditingController();
  final TextEditingController txtIntId = TextEditingController();
  final TextEditingController txtUid = TextEditingController();
  final TextEditingController txtUser = TextEditingController();
  final double _sideDiv = 50;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DmsTextField(labelText: "TOTALROW", ctrl: txtTotalRow),
            SizedBox(width: _sideDiv),
            DmsTextField(labelText: "COMP_CODE", ctrl: txtCompCode),
          ],
        ),
        const SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DmsTextField(labelText: "BUS_DATE", ctrl: txtBusDate),
            SizedBox(width: _sideDiv),
            DmsTextField(labelText: "PST_DATE", ctrl: txtPstDate),
          ],
        ),
        const SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DmsTextField(labelText: "SY_SOURCE", ctrl: txtSySource),
            SizedBox(width: _sideDiv),
            DmsTextField(labelText: "INT_ID", ctrl: txtIntId),
          ],
        ),
        const SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DmsTextField(labelText: "UID", ctrl: txtUid),
            SizedBox(width: _sideDiv),
            DmsTextField(labelText: "USER", ctrl: txtUser),
          ],
        ),
      ],
    );
  }
}
