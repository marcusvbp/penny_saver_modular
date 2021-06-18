import 'package:flutter/material.dart';
import 'package:penny_saver/app/models/transacao_model.dart';
import 'package:penny_saver/app/widgets/chip_tile.dart';

class CardTransaction extends StatefulWidget {
  final Transacao transacao;
  const CardTransaction({Key? key, required this.transacao}) : super(key: key);

  @override
  _CardTransactionState createState() => _CardTransactionState();
}

class _CardTransactionState extends State<CardTransaction>
    with SingleTickerProviderStateMixin {
  bool showObs = false;
  late AnimationController _sizeController = AnimationController(
    vsync: this,
    duration: Duration(milliseconds: 300),
  );

  late Animation<double> _sizeAnimation = CurvedAnimation(
    parent: _sizeController,
    curve: Curves.easeInOut,
  );

  @override
  void dispose() {
    _sizeController.dispose();
    super.dispose();
  }

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('${widget.transacao.date.day}'),
                  Text(
                    '\$ ${widget.transacao.value}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: widget.transacao.value < 0
                          ? Colors.red
                          : Colors.green,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    if (widget.transacao.account != null)
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: ChipTile(
                          value: widget.transacao.account!.name,
                          color: Color(widget.transacao.account!.color),
                          label: 'Banco',
                        ),
                      ),
                    if (widget.transacao.source != null)
                      ChipTile(
                        value: widget.transacao.source!.name,
                        label: 'Origem',
                      ),
                    Spacer(),
                    TextButton.icon(
                      onPressed: () {
                        setState(() {
                          showObs = !showObs;
                        });
                        if (showObs)
                          _sizeController.forward();
                        else
                          _sizeController.reverse();
                      },
                      icon: Icon(
                        showObs
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                      ),
                      label: Text('Observações'),
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                  ],
                ),
              ),
              if (widget.transacao.observation != null)
                SizeTransition(
                  sizeFactor: _sizeAnimation,
                  axisAlignment: 1.0,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(widget.transacao.observation ?? ''),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
