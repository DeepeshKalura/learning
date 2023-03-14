import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ShowContentBarWidget extends StatefulWidget {
  const ShowContentBarWidget({super.key, required this.context});
  final BuildContext context;

  @override
  State<ShowContentBarWidget> createState() => _ShowContentBarWidgetState();
}

class _ShowContentBarWidgetState extends State<ShowContentBarWidget> {
  final TextEditingController _taskNameTextEditingcontroller =
      TextEditingController();

  String _date = 'Select Date';

  TimeOfDay _time = TimeOfDay.now();

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime(2025));

    if (picked != null) {
      setState(() {
        _date = DateFormat('dd/MM/yyyy').format(picked);
      });
    }
  }

  Future<void> selectTime(BuildContext context) async {
    final TimeOfDay? picked =
        await showTimePicker(context: context, initialTime: _time);

    if (picked != null && picked != _time) {
      setState(() {
        _time = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Form(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(8),
              child: TextFormField(
                controller: _taskNameTextEditingcontroller,
                decoration: const InputDecoration(
                  labelText: 'Task Name',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    child: InkWell(
                      onTap: () async {
                        await selectDate(widget.context);
                      }, // We are passing context here
                      child: Text(_date),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    child: InkWell(
                      onTap: () async {
                        await selectTime(widget.context);
                      },
                      child: Text(
                        _time.toString(),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
