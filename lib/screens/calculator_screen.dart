import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _buildDisplay(),
            SizedBox(height: 10),
            _buildButtonRow(['7', '8', '9', '/']),
            SizedBox(height: 10),
            _buildButtonRow(['4', '5', '6', '*']),
            SizedBox(height: 10),
            _buildButtonRow(['1', '2', '3', '-']),
            SizedBox(height: 10),
            _buildButtonRow(['0', '.', '=', '+']),
          ],
        ),
      ),
    );
  }

  Widget _buildDisplay() {
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 24),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 68, 65, 65),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        '0',
        style: TextStyle(color: Colors.white, fontSize: 48),
      ),
    );
  }

  Widget _buildButtonRow(List<String> buttons) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: buttons.map((button) {
        bool isOperator = ['/', '*', '-', '+', '='].contains(button);
        return _buildButton(button, isOperator);
      }).toList(),
    );
  }

  Widget _buildButton(String text, bool isOperator) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(4.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(20.0),
            backgroundColor: isOperator ? Colors.blue : Colors.white, // Updated from primary
            foregroundColor: isOperator ? Colors.white : Colors.black, // Updated from onPrimary
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: Colors.blue),
            ),
          ),
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
