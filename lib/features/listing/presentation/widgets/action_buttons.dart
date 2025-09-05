import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({
    super.key,
    required this.onChatPressed,
    required this.onReportPressed,
  });

  final VoidCallback onChatPressed;
  final VoidCallback onReportPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: FilledButton(
            onPressed: onChatPressed,
            child: Text('CHAT WITH SELLER'),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: TextButton(onPressed: onReportPressed, child: Text('REPORT')),
        ),
      ],
    );
  }
}
