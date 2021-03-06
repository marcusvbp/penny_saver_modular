import 'package:flutter/material.dart';
import 'package:penny_saver/app/models/conta_model.dart';
import 'package:penny_saver/app/widgets/value_field.dart';
import 'add_conta_controller_store.dart';

class AddContaFormWidget extends StatefulWidget {
  final void Function() onCancel;
  final void Function(Conta conta) onAdd;

  const AddContaFormWidget({
    Key? key,
    required this.onCancel,
    required this.onAdd,
  }) : super(key: key);
  @override
  _AddContaFormWidgetState createState() => _AddContaFormWidgetState();
}

class _AddContaFormWidgetState extends State<AddContaFormWidget> {
  final controller = AddContaControllerStore();

  final formKey = GlobalKey<FormState>();

  late TextEditingController valueInputController;

  @override
  void initState() {
    super.initState();
    valueInputController = TextEditingController(
      text: controller.initialValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      constraints: BoxConstraints(maxWidth: 600),
      child: Form(
        key: formKey,
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
            ValueField(
              controller: valueInputController,
              onChanged: (v) {
                controller.setInitialValue(v);
              },
              onTap: () {
                valueInputController.text = '';
              },
              labelText: 'Valor Inicial da Conta',
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
                      onPressed: widget.onCancel,
                      child: Text('Cancelar'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          widget.onAdd(controller.toConta());
                        }
                      },
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
      ),
    );
  }
}
