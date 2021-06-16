import 'package:flutter/material.dart';
import 'package:penny_saver/app/models/source_model.dart';

import 'add_source_form_controller.dart';

class AddSourceFormWidget extends StatefulWidget {
  final void Function() onCancel;
  final void Function(Source source) onAdd;
  const AddSourceFormWidget({
    Key? key,
    required this.onCancel,
    required this.onAdd,
  }) : super(key: key);

  @override
  _AddSourceFormWidgetState createState() => _AddSourceFormWidgetState();
}

class _AddSourceFormWidgetState extends State<AddSourceFormWidget> {
  final controller = AddSourceFormStore();
  late TextEditingController nameFieldEditingController;
  late TextEditingController observationsFieldEditingController;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    nameFieldEditingController = TextEditingController(
      text: controller.name,
    );
    observationsFieldEditingController = TextEditingController(
      text: controller.observations,
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
              controller: nameFieldEditingController,
              onChanged: controller.setName,
              validator: controller.validateName,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nome da Fonte Pagadora',
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: observationsFieldEditingController,
              onChanged: controller.setObservations,
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
                      onPressed: widget.onCancel,
                      child: Text('Cancelar'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          widget.onAdd(controller.toSource());
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
