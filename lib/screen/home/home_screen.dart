import 'package:dms_extender_flutter/widget/dmstextfield.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<DropdownMenuItem<String>> _dropdownMenuItems = [];
  List<String> _logs = [];
  final double side_div = 50;

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

    _logs = [
      'Log 1',
      'Log 2',
      'Log 3',
      'Log 4',
      'Log 5',
      'Log 6',
      'Log 7',
      'Log 8',
      'Log 9',
      'Log 10',
      'Log 11',
      'Log 12',
      'Log 13',
      'Log 14',
      'Log 15',
      'Log 16',
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
                        const DmsTextField(labelText: "TOTALROW"),
                        SizedBox(width: side_div),
                        const DmsTextField(labelText: "COMP_CODE"),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const DmsTextField(labelText: "BUS_DATE"),
                        SizedBox(width: side_div),
                        const DmsTextField(labelText: "PST_DATE"),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const DmsTextField(labelText: "SY_SOURCE"),
                        SizedBox(width: side_div),
                        const DmsTextField(labelText: "INT_ID"),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const DmsTextField(labelText: "UID"),
                        SizedBox(width: side_div),
                        const DmsTextField(labelText: "USER"),
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
                        SizedBox(width: side_div),
                        SizedBox(
                          width: 200,
                          child: DropdownButtonFormField(
                              items: const <DropdownMenuItem<String>>[
                                DropdownMenuItem(
                                  value: "DMS Jakarta",
                                  child: Text('DMS Jakarta'),
                                ),
                                DropdownMenuItem(
                                  value: "DMS Surabaya",
                                  child: Text('DMS Surabaya'),
                                ),
                              ],
                              onChanged: (val) {}),
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
                            onPressed: () {},
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
                  itemCount: _logs.length,
                  itemBuilder: (context, index) {
                    return ListTile(
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
