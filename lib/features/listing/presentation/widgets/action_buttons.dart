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
            style: ButtonStyle(
              backgroundColor: const WidgetStatePropertyAll(Color(0xFF32B780)),
              shape: const WidgetStatePropertyAll(RoundedRectangleBorder()),
              padding: const WidgetStatePropertyAll(
                EdgeInsets.symmetric(vertical: 19),
              ),
            ),
            child: Text(
              'CHAT WITH SELLER',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white,
                height: 1,
                letterSpacing: 14 * 0.06,
              ),
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: TextButton(
            onPressed: onReportPressed,
            style: ButtonStyle(
              padding: const WidgetStatePropertyAll(
                EdgeInsets.symmetric(vertical: 19),
              ),
              shape: const WidgetStatePropertyAll(RoundedRectangleBorder()),
              backgroundColor: const WidgetStatePropertyAll(Colors.transparent),
            ),
            child: Text(
              'REPORT',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF32B780),
                height: 1,
                letterSpacing: 14 * 0.06,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
