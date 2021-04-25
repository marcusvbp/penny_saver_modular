import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:penny_saver/app/contas/models/conta_model.dart';
import 'package:penny_saver/app/transacoes/models/source_model.dart';
import 'package:penny_saver/app/contas/widgets/add_conta/add_form_widget.dart';

import 'add_controller_store.dart';

class AddTransactionFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<AddControllerStore>();
    final dateInputController = TextEditingController(
      text: UtilData.obterDataDDMMAAAA(controller.date),
    );
    final valueInputController = TextEditingController(
      text: controller.value,
    );
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
                // Switch(
                //   value: controller.valueIsNegative,
                //   onChanged: (v) => controller.toggleValueIsNegative(),
                // ),
                SwitchListTile(
                  value: controller.valueIsNegative,
                  onChanged: (v) => controller.toggleValueIsNegative(),
                  title: Text('Retirada'),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: valueInputController,
                  onChanged: (v) {
                    controller.setValue(v);
                  },
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
                Row(
                  children: [
                    Expanded(
                      child: DropdownButtonFormField<Source>(
                        items: [],
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
                      onPressed: () {},
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: DropdownButtonFormField<Conta>(
                        items: [],
                        onChanged: (v) {
                          if (v != null) controller.setConta(v);
                        },
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
                          builder: (context) =>
                              Center(child: AddContaFormWidget()),
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
                          onPressed: () {},
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
