import 'package:flutter/material.dart';
import 'package:penny_saver/app/models/transacao_model.dart';

class CardTransaction extends StatelessWidget {
  final Transacao transacao;
  const CardTransaction({Key? key, required this.transacao}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              offset: Offset(0, 0),
              color: Colors.black26,
            )
          ]),
      child: Material(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('${transacao.date.day}'),
                  Text(
                    '\$ ${transacao.value}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: transacao.value < 0 ? Colors.red : Colors.green,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  if (transacao.account != null)
                    Chip(
                      label: Text('${transacao.account?.name}'),
                      visualDensity: VisualDensity.compact,
                    )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
