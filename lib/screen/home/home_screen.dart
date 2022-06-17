import 'dart:developer';

import 'package:dms_extender_flutter/controller/resultcontroller.dart';
import 'package:dms_extender_flutter/form/formfetchreport.dart';
import 'package:dms_extender_flutter/form/formfetchresult.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController scrollControl = ScrollController();
  late List<DropdownMenuItem<String>> _dropdownMenuItems = [];
  List<String> _logs = [];

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
              child: Consumer<ResultController>(
                builder: (context, ctrl, child) => Container(
                  margin: const EdgeInsets.only(top: 90),
                  child: AnimatedSwitcher(
                    duration: const Duration(seconds: 1),
                    child: ctrl.isResultState
                        ? FormFetchResult()
                        : FormFetchReport(
                            dropdownMenuItems: _dropdownMenuItems,
                          ),
                  ),
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
