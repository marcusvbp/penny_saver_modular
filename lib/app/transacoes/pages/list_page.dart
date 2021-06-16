import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:penny_saver/app/transacoes/transacoes_store.dart';
import '../widgets/add_transaction/add_transacao_form_widget.dart';

class ListTransacoesPage extends StatefulWidget {
  final String title;
  const ListTransacoesPage({Key? key, this.title = 'ListPage'})
      : super(key: key);
  @override
  ListTransacoesPageState createState() => ListTransacoesPageState();
}

class ListTransacoesPageState extends State<ListTransacoesPage> {
  final transacoesStore = Modular.get<TransacoesStore>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: MaterialButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            Modular.to.pushNamed('/contas');
          },
          child: Text(
            'contas',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.attach_money),
        tooltip: 'Adicionar Transação',
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => Dialog(
              child: SingleChildScrollView(
                child: AddTransactionFormWidget(
                  onCancel: () {
                    Modular.to.pop();
                  },
                  onSuccess: (transacao) {
                    transacoesStore.add(transacao);
                    Modular.to.pop();
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
