import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function(String, double) addTx;
  final titleHandler = TextEditingController();
  final amountHandler = TextEditingController();

  NewTransaction(this.addTx, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: const InputDecoration(
                label: Text(
                  "Title:",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
              controller: titleHandler,
            ),
            TextField(
              decoration: const InputDecoration(
                label: Text(
                  "Amount:",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
              controller: amountHandler,
            ),
            TextButton(
              onPressed: () =>
                  addTx(titleHandler.text, double.parse(amountHandler.text)),
              child: const Text(
                "Add transaction",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
