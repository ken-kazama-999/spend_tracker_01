import 'package:flutter/material.dart';

import '../widgets/new_transaction.dart';
import '../widgets/transaction_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({super.key});

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

final List<Transaction> _userTx = [
  Transaction(
    "t1",
    "Test01",
    90.00,
    DateTime.now(),
  )
];

class _UserTransactionState extends State<UserTransaction> {
  void _addTx(String txTitle, double txAmount) {
    final newTx = Transaction(
      DateTime.now().toString(),
      txTitle,
      txAmount,
      DateTime.now(),
    );

    setState(() {
      _userTx.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      child: Column(
        children: [
          NewTransaction(_addTx),
          TransactionList(_userTx),
        ],
      ),
    );
  }
}
