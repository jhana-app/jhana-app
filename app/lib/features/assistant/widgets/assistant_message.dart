import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AssistantMessage extends StatelessWidget {
  final ImageProvider avatar;
  final String name;
  final DateTime dateTime;
  final String body;
  final List<Widget> actions;

  const AssistantMessage({
    super.key,
    required this.avatar,
    required this.name,
    required this.dateTime,
    required this.body,
    this.actions = const [],
  });

  @override
  Widget build(BuildContext context) {
    final time = DateFormat.jm().format(dateTime);

    return SizedBox(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 23,
            backgroundImage: avatar,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 16,
                        height: 22 / 16,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      time,
                      style: const TextStyle(
                        fontSize: 14,
                        height: 22 / 14,
                        color: Color(0xffA0A0A0),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                RichText(
                  text: TextSpan(
                    text: body,
                    style: const TextStyle(
                      fontSize: 14,
                      height: 20 / 14,
                    ),
                  ),
                ),
                _buildActions(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActions() {
    if (actions.isEmpty) {
      return const SizedBox.shrink();
    }

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SizedBox(height: 7),
          ...actions
              .map((action) => Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: SizedBox(
                      width: 190,
                      height: 40,
                      child: action,
                    ),
                  ))
              .toList(),
        ],
      ),
    );
  }
}
