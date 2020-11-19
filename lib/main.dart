import 'package:expenses/components/transaction_form.dart';
import 'package:flutter/material.dart';
import 'package:expenses/components/transaction_user.dart';


main()=>runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

_openTransactionFormModal(BuildContext context){
  showModalBottomSheet(
    context: context,
    builder: (_){
      return TransactionForm(null);
    }
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas Pessoais'),
        actions: [
          IconButton(
              icon: Icon(Icons.add),
              onPressed: (){},
              ),
        ],
      ),
      body:SingleChildScrollView(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Card(
                color: Colors.blue,
                child: Text('Grafico'),
                elevation: 5,
              ),
            ),
            TransactionUser(),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
