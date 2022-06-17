import 'package:dms_extender_flutter/controller/resultcontroller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FormFetchReport extends StatefulWidget {
  final List<DropdownMenuItem<String>> dropdownMenuItems;
  const FormFetchReport({
    Key? key,
    required this.dropdownMenuItems,
  }) : super(key: key);

  @override
  State<FormFetchReport> createState() => _FormFetchReportState();
}

class _FormFetchReportState extends State<FormFetchReport> {
  final double _sideDiv = 50;
  late ResultController resultCtrl;

  @override
  void initState() {
    super.initState();
    resultCtrl = Provider.of<ResultController>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Report Type", style: TextStyle(fontSize: 18)),
                SizedBox(
                  width: 250,
                  child: DropdownButtonFormField(
                      items: widget.dropdownMenuItems, onChanged: (val) {}),
                ),
              ],
            ),
            SizedBox(width: _sideDiv),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("DMS Branch", style: TextStyle(fontSize: 18)),
                SizedBox(
                  width: 250,
                  child: DropdownButtonFormField(
                      items: widget.dropdownMenuItems, onChanged: (val) {}),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 30),
        TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            foregroundColor: MaterialStateProperty.all(Colors.white),
          ),
          child: const Text('Get From DMS'),
          onPressed: () {
            setState(() {
              resultCtrl.setResultState(true);
            });
          },
        ),
      ],
    );
  }
}
