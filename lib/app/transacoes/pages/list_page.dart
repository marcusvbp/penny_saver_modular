import 'package:flutter/material.dart';
import 'package:penny_saver/app/transacoes/widgets/add_transaction/add_form_widget.dart';

class ListPage extends StatefulWidget {
  final String title;
  const ListPage({Key? key, this.title = 'ListPage'}) : super(key: key);
  @override
  ListPageState createState() => ListPageState();
}

class ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.attach_money),
        tooltip: 'Adicionar Transação',
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => Dialog(
              child: AddTransactionFormWidget(),
            ),
          );
        },
      ),
    );
  }
}
