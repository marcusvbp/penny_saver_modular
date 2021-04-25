import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:penny_saver/app/contas/widgets/add_conta/add_conta_controller_store.dart';

class AddContaFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<AddContaControllerStore>();
    final valueInputController = TextEditingController(
      text: controller.initialValue,
    );

    return Container(
      padding: const EdgeInsets.all(20),
      constraints: BoxConstraints(maxWidth: 600),
      child: Observer(
        builder: (context) {
          return Form(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  initialValue: '',
                  onChanged: controller.setName,
                  validator: controller.validateName,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nome da Conta',
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: valueInputController,
                  onChanged: (v) {
                    controller.setInitialValue(v);
                  },
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.right,
                  onTap: () {
                    valueInputController.text = '';
                  },
                  validator: controller.validateValue,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Valor Inicial da Conta',
                    prefixText: '\$ ',
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
                            'Salvar Conta',
                            style: TextStyle(
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
