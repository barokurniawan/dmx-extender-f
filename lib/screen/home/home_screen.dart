import 'package:dms_extender_flutter/widget/dmstextfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<DropdownMenuItem<String>> _dropdownMenuItems = [];
  late List<String> _logs = [];
  final double _sideDiv = 50;
  final TextEditingController txtTotalRow = TextEditingController();
  final TextEditingController txtCompCode = TextEditingController();
  final TextEditingController txtBusDate = TextEditingController();
  final TextEditingController txtPstDate = TextEditingController();
  final TextEditingController txtSySource = TextEditingController();
  final TextEditingController txtIntId = TextEditingController();
  final TextEditingController txtUid = TextEditingController();
  final TextEditingController txtUser = TextEditingController();
  final ScrollController scrollControl = ScrollController();

  @override
  void initState() {
    _dropdownMenuItems = [
      const DropdownMenuItem<String>(
        value: 'en',
        child: Text('English'),
      ),
      const DropdownMenuItem<String>(
        value: 'de',
        child: Text('German'),
      ),
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DmsTextField(labelText: "TOTALROW", ctrl: txtTotalRow),
                        SizedBox(width: _sideDiv),
                        DmsTextField(labelText: "COMP_CODE", ctrl: txtCompCode),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DmsTextField(labelText: "BUS_DATE", ctrl: txtBusDate),
                        SizedBox(width: _sideDiv),
                        DmsTextField(labelText: "PST_DATE", ctrl: txtPstDate),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DmsTextField(labelText: "SY_SOURCE", ctrl: txtSySource),
                        SizedBox(width: _sideDiv),
                        DmsTextField(labelText: "INT_ID", ctrl: txtIntId),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DmsTextField(labelText: "UID", ctrl: txtUid),
                        SizedBox(width: _sideDiv),
                        DmsTextField(labelText: "USER", ctrl: txtUser),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 200,
                          child: DropdownButtonFormField(
                              items: _dropdownMenuItems, onChanged: (val) {}),
                        ),
                        SizedBox(width: _sideDiv),
                        SizedBox(
                          width: 200,
                          child: DropdownButtonFormField(
                              items: _dropdownMenuItems, onChanged: (val) {}),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: 400,
                      child: Center(
                        child: SizedBox(
                          width: 300,
                          child: TextButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                            child: const Text('Get From DMS'),
                            onPressed: () {
                              setState(() {
                                _logs.add('Get From DMS.. ');
                                _logs.add(
                                    'DMS Address http://localhost:8080/dms/');
                                _logs.add('payload..');
                                _logs.add(
                                    "lorem imsum dolor sit amet contrelat para  asdakj kjdfhsdk heirudfs jshfur duksfhiur sdkjf mncvb djkjhkjfhs hseurhsdf");
                              });

                              Future.delayed(const Duration(seconds: 1))
                                  .then((value) {
                                scrollControl.jumpTo(
                                    scrollControl.position.maxScrollExtent);
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: const Color.fromARGB(255, 35, 33, 68),
                child: ListView.builder(
                  controller: scrollControl,
                  itemCount: _logs.length,
                  itemBuilder: (context, index) {
                    var format = DateFormat.Hms();
                    return ListTile(
                      subtitle: Text(format.format(DateTime.now()),
                          style: const TextStyle(color: Colors.grey)),
                      title: Text(
                        _logs[index],
                        style: const TextStyle(color: Colors.white),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
