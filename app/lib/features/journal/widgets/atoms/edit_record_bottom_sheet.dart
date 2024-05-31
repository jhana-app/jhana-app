import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:jhanas/api/graphql/journal_record.graphql.dart';
import 'package:jhanas/atoms/button_contained.dart';
import 'package:jhanas/atoms/button_outline.dart';
import 'package:jhanas/atoms/duration_bottom_sheet.dart';
import 'package:jhanas/atoms/pull_down_indicator.dart';
import 'package:jhanas/helpers/duration.dart';

class EditRecordResult {
  final DateTime datetime;
  final Duration duration;
  final String note;

  EditRecordResult(this.datetime, this.duration, this.note);
}

class EditRecordBottomSheet extends StatefulWidget {
  final Fragment$JournalRecord? initialRecord;
  final Future<bool> Function(EditRecordResult? newRecord) handleSave;

  const EditRecordBottomSheet({
    super.key,
    this.initialRecord,
    required this.handleSave,
  });

  @override
  EditRecordBottomSheetState createState() => EditRecordBottomSheetState();
}

class EditRecordBottomSheetState extends State<EditRecordBottomSheet> {
  late bool isNew;
  late DateTime dateTime;
  late Duration duration;
  TextEditingController _dateTimeController = TextEditingController();
  TextEditingController _durationController = TextEditingController();
  TextEditingController _noteController = TextEditingController();

  @override
  void initState() {
    if (widget.initialRecord == null) {
      isNew = true;
      dateTime = DateTime.now();
      duration = const Duration(seconds: 60);
      _noteController.text = '';
    } else {
      isNew = false;
      dateTime = DateTime.parse(widget.initialRecord!.datetime).toLocal();
      duration = Duration(seconds: widget.initialRecord!.duration);
      _noteController.text = widget.initialRecord!.note;
    }
    _dateTimeController.text = [
      DateFormat.MMMd().format(dateTime),
      ', ',
      DateFormat.jm().format(dateTime)
    ].join();
    _durationController.text = formatDurationHuman(duration);
    super.initState();
  }

  Future<void> _showDateTimePicker(BuildContext context) async {
    final date = await showDatePicker(
      context: context,
      initialDate: dateTime,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (date != null && context.mounted) {
      final time = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(dateTime),
      );
      if (time != null) {
        setState(() {
          dateTime = DateTime(
            date.year,
            date.month,
            date.day,
            time.hour,
            time.minute,
          );
          _dateTimeController.text = [
            DateFormat.MMMd().format(dateTime),
            ', ',
            DateFormat.jm().format(dateTime)
          ].join();
        });
      }
    }
  }

  Future<void> _showDurationWheel(BuildContext context) async {
    final value = await showDurationWheel(
      context: context,
      initialDuration: duration,
    );
    if (value != null) {
      setState(() {
        duration = value;
        _durationController.text = formatDurationHuman(duration);
      });
    }
  }

  void _cancel() {
    Navigator.pop(context);
  }

  Future<void> _submit() async {
    final newRecord =
        EditRecordResult(dateTime, duration, _noteController.text);
    final saved = await widget.handleSave(newRecord);
    if (saved && context.mounted) {
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          color: const Color.fromRGBO(36, 33, 43, 1),
          child: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const PullDownIndicator(),
                  Container(
                    alignment: Alignment.topLeft,
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                    child: Text(
                      isNew ? 'Add journal record' : 'Edit journal record',
                      style: const TextStyle(
                        fontSize: 24,
                        color: Color(0xffE6E1E5),
                      ),
                    ),
                  ),
                  const SizedBox(height: 13),
                  TextField(
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color(0xffE6E1E5),
                    ),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Date and time',
                      labelStyle: TextStyle(fontSize: 16),
                    ),
                    readOnly: true,
                    controller: _dateTimeController,
                    onTap: () => _showDateTimePicker(context),
                  ),
                  const SizedBox(height: 22),
                  TextField(
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color(0xffE6E1E5),
                    ),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Duration',
                      labelStyle: TextStyle(fontSize: 16),
                    ),
                    readOnly: true,
                    controller: _durationController,
                    onTap: () => _showDurationWheel(context),
                  ),
                  const SizedBox(height: 22),
                  SizedBox(
                    height: 200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        color: const Color(0x22ffffff),
                        child: TextField(
                          keyboardType: TextInputType.multiline,
                          textCapitalization: TextCapitalization.sentences,
                          autofocus: true,
                          maxLines: null,
                          style: const TextStyle(
                            fontSize: 18,
                            color: Color(0xffE6E1E5),
                          ),
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            border: InputBorder.none,
                            hintText: 'Describe your experience',
                            hintStyle: TextStyle(
                              fontSize: 18,
                              color: Color(0x88E6E1E5),
                            ),
                          ),
                          controller: _noteController,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 22),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        flex: 5,
                        child: ButtonOutline(
                          height: 40,
                          child: const Text('Cancel'),
                          onPressed: () => _cancel(),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Flexible(
                        flex: 5,
                        child: ButtonContained(
                          height: 40,
                          child: const Text('Save'),
                          onPressed: () => _submit(),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 22),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
