import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateListingScreen extends StatefulWidget {
  const CreateListingScreen({super.key});

  @override
  State<CreateListingScreen> createState() => _CreateListingScreenState();
}

class _CreateListingScreenState extends State<CreateListingScreen> {
  bool _isAdSpend = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Create Listing Screen'),
            CupertinoSwitch(
              value: _isAdSpend,
              onChanged: (value) {
                _isAdSpend = value;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
