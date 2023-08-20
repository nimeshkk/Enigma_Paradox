import 'package:flutter/material.dart';

class CreditCardPage extends StatefulWidget {
  @override
  _CreditCardPageState createState() => _CreditCardPageState();
}

class _CreditCardPageState extends State<CreditCardPage> {
  String _selectedCardType = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Credit Card'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Select Your Credit Card Type',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            RadioListTile<String>(
              title: Text('Visa'),
              value: 'Visa',
              groupValue: _selectedCardType,
              onChanged: (value) {
                setState(() {
                  _selectedCardType = value!;
                });
              },
            ),
            RadioListTile<String>(
              title: Text('MasterCard'),
              value: 'MasterCard',
              groupValue: _selectedCardType,
              onChanged: (value) {
                setState(() {
                  _selectedCardType = value!;
                });
              },
            ),
            RadioListTile<String>(
              title: Text('American Express'),
              value: 'American Express',
              groupValue: _selectedCardType,
              onChanged: (value) {
                setState(() {
                  _selectedCardType = value!;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Submit card selection logic
                if (_selectedCardType.isNotEmpty) {
                  // Navigate back or perform further actions
                }
              },
              child: Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}
