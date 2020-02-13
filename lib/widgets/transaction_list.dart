import 'package:expense_app/widgets/transaction_item.dart';
import 'package:flutter/material.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTx;

  TransactionList(this.transactions, this.deleteTx);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      child: transactions.isEmpty 
      ? LayoutBuilder(builder: (ctx, constraints) {
        return Column(
          children: <Widget>[
            Text("No transactions added yet!",
              style: Theme.of(context).textTheme.title,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: constraints.maxHeight * 0.6,
              child: Image.asset('assets/images/waiting.png', 
                fit: BoxFit.cover, 
              ),
            )
          ],
        );
      }) 
      : ListView(
          children: transactions
            .map((tx) => TransactionItem(
              key: ValueKey(tx.id),
              transaction: tx,
              deleteTx: deleteTx
            ))
          .toList(),
        )
      /*ListView.builder(
        itemBuilder: (ctx, index){
          return TransactionItem(transaction: transactions[index], deleteTx: deleteTx);
        },
        itemCount: transactions.length,
      ),*/
    );
  }
}

