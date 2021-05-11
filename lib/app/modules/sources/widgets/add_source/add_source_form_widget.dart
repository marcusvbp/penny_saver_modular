import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:penny_saver/app/modules/sources/sources_store.dart';

import 'add_source_form_controller.dart';

class AddSourceFormWidget extends StatelessWidget {
  const AddSourceFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = AddSourceFormStore();
    final sourcesStore = Modular.get<SourcesStore>();
    final nameFieldEditingController = TextEditingController(
      text: controller.name,
    );
    final observationsFieldEditingController = TextEditingController(
      text: controller.observations,
    );
    final formKey = GlobalKey<FormState>();

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
                      onPressed: () {
                        Modular.to.pop();
                      },
                      child: Text('Cancelar'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          sourcesStore.addConta(controller.toSource());
                          Modular.to.pop();
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
