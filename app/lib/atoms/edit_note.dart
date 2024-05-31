import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:jhanas/atoms/button_contained.dart';
import 'package:jhanas/atoms/button_outline.dart';
import 'package:jhanas/atoms/pull_down_indicator.dart';

class EditNoteButton extends StatelessWidget {
  final String note;
  final ValueChanged<String> onChanged;

  const EditNoteButton({
    super.key,
    required this.note,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonOutline(
      height: 40,
      child: AutoSizeText(
        note.isEmpty ? 'Add journal note' : 'Edit journal note',
        minFontSize: 10,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        maxLines: 1,
      ),
      onPressed: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context) {
            return EditNoteBottomSheet(
              note: note,
              valueChanged: onChanged,
            );
          },
        );
      },
    );
  }
}

class EditNoteFloatButton extends StatelessWidget {
  final String note;
  final ValueChanged<String> onChanged;

  const EditNoteFloatButton({
    super.key,
    required this.note,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: 56,
      child: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) {
              return EditNoteBottomSheet(
                note: note,
                valueChanged: onChanged,
              );
            },
          );
        },
        foregroundColor: const Color(0xFFD0BCFF),
        backgroundColor: const Color(0xff625b71),
        child: const Icon(Icons.edit_outlined, size: 32),
      ),
    );
  }
}

class EditNoteBottomSheet extends StatefulWidget {
  final String note;
  final ValueChanged<String> valueChanged;

  const EditNoteBottomSheet({
    super.key,
    required this.note,
    required this.valueChanged,
  });

  @override
  EditNoteBottomSheetState createState() => EditNoteBottomSheetState();
}

class EditNoteBottomSheetState extends State<EditNoteBottomSheet> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    _controller.text = widget.note;
    super.initState();
  }

  void _cancel() {
    Navigator.of(context).pop();
  }

  void _submit() {
    widget.valueChanged(_controller.text);
    Navigator.of(context).pop();
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
                      widget.note.isEmpty ? 'Add note' : 'Edit note',
                      style: const TextStyle(
                        fontSize: 24,
                        color: Color(0xffE6E1E5),
                      ),
                    ),
                  ),
                  const SizedBox(height: 13),
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
                          controller: _controller,
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
