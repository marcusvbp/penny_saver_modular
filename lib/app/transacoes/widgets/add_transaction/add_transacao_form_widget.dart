import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:penny_saver/app/models/conta_model.dart';
import 'package:penny_saver/app/models/source_model.dart';
import 'package:penny_saver/app/contas/contas_store.dart';
import 'package:penny_saver/app/sources/sources_store.dart';
import 'package:penny_saver/app/sources/widgets/add_source/add_source_form_widget.dart';
import 'package:penny_saver/app/transacoes/transacoes_store.dart';
import '../../../contas/widgets/add_conta/add_conta_form_widget.dart';

import 'add_controller_store.dart';

class AddTransactionFormWidget extends StatefulWidget {
  @override
  _AddTransactionFormWidgetState createState() =>
      _AddTransactionFormWidgetState();
}

class _AddTransactionFormWidgetState extends State<AddTransactionFormWidget> {
  final controller = AddControllerStore();
  late TextEditingController dateInputController;
  late TextEditingController valueInputController;
  final contasStore = Modular.get<ContasStore>();
  final sourcesStore = Modular.get<SourcesStore>();
  final transacoesStore = Modular.get<TransacoesStore>();

  @override
  void initState() {
    super.initState();
    dateInputController = TextEditingController(
      text: UtilData.obterDataDDMMAAAA(controller.date),
    );
    valueInputController = TextEditingController(
      text: controller.value,
    );
    contasStore.rehydrate();
    sourcesStore.rehydrate();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      constraints: BoxConstraints(maxWidth: 600),
      child: Observer(
        builder: (_) {
          final textActionColor =
              controller.valueIsNegative ? Colors.red[800] : Colors.green[800];
          return Form(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SwitchListTile(
                  value: controller.valueIsNegative,
                  onChanged: (v) {
                    controller.setSource(null);
                    controller.toggleValueIsNegative();
                  },
                  title: Text('Retirada'),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: valueInputController,
                  onChanged: (v) {
                    controller.setValue(v);
                  },
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    RealInputFormatter(centavos: true),
                  ],
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.right,
                  onTap: () {
                    valueInputController.text = '';
                  },
                  style: TextStyle(
                    color: textActionColor,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Valor',
                    prefixText: '\$ ',
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: dateInputController,
                  onTap: () async {
                    DateTime? newDate = await showDatePicker(
                      context: context,
                      initialDate: controller.date,
                      firstDate: controller.date.subtract(Duration(days: 30)),
                      lastDate: controller.date.add(
                        Duration(days: 30),
                      ),
                      currentDate: controller.date,
                      // locale: Locale('pt_BR'),
                    );
                    if (newDate != null) {
                      dateInputController.text =
                          UtilData.obterDataDDMMAAAA(newDate);
                      controller.setDate(newDate);
                    }
                  },
                  readOnly: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Data',
                  ),
                ),
                const SizedBox(height: 20),
                if (!controller.valueIsNegative)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: DropdownButtonFormField<Source>(
                            value: controller.sourceOrigin,
                            items: sourcesStore.sources
                                .map(
                                  (e) => DropdownMenuItem<Source>(
                                    child: Text(e.name),
                                    value: e,
                                  ),
                                )
                                .toList(),
                            onChanged: (v) {
                              if (v != null) controller.setSource(v);
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Origem da grana',
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        IconButton(
                          icon: Icon(Icons.add),
                          visualDensity: VisualDensity.compact,
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) => ListView(
                                shrinkWrap: true,
                                padding: const EdgeInsets.all(20),
                                children: [
                                  Text(
                                    'Adicionar Fonte Pagadora',
                                    style:
                                        Theme.of(context).textTheme.headline5,
                                  ),
                                  const SizedBox(height: 20),
                                  Center(
                                    child: AddSourceFormWidget(
                                      onCancel: () {
                                        Modular.to.pop();
                                      },
                                      onAdd: (source) async {
                                        Modular.to.pop();
                                        await sourcesStore.addConta(source);
                                        controller.setSource(source);
                                      },
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                Row(
                  children: [
                    Expanded(
                      child: DropdownButtonFormField<Conta>(
                        items: contasStore.contas
                            .map(
                              (e) => DropdownMenuItem<Conta>(
                                child: Text(e.name),
                                value: e,
                              ),
                            )
                            .toList(),
                        onChanged: (v) {
                          if (v != null) controller.setConta(v);
                        },
                        value: controller.destinationAccount,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: controller.valueIsNegative
                              ? 'Conta a ser sacada'
                              : 'Conta a ser depositada',
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    IconButton(
                      icon: Icon(Icons.add),
                      visualDensity: VisualDensity.compact,
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => ListView(
                            shrinkWrap: true,
                            padding: const EdgeInsets.all(20),
                            children: [
                              Text(
                                'Adicionar Conta',
                                style: Theme.of(context).textTheme.headline5,
                              ),
                              const SizedBox(height: 20),
                              Center(
                                child: AddContaFormWidget(
                                  onCancel: () {
                                    Modular.to.pop();
                                  },
                                  onAdd: (conta) async {
                                    Modular.to.pop();
                                    await contasStore.addConta(conta);
                                    controller.setConta(conta);
                                  },
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    )
                  ],
                ),
                const SizedBox(height: 20),
                TextFormField(
                  initialValue: controller.observation,
                  onChanged: controller.setObservation,
                  minLines: 1,
                  maxLines: 3,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Observação',
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 40,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {
                            Modular.to.pop();
                          },
                          child: Text('Cancelar'),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: (double.tryParse(controller.value) ?? 0) ==
                                  0
                              ? null
                              : () {
                                  transacoesStore.add(controller.toTransacao());
                                  Modular.to.pop();
                                },
                          child: Text(
                            controller.valueIsNegative
                                ? 'CASH-OUT... :('
                                : 'CASH-IN!',
                            style: TextStyle(
                              color: textActionColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
