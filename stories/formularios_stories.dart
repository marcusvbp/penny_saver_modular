import 'package:penny_saver/app/contas/widgets/add_conta/add_conta_form_widget.dart';
import 'package:penny_saver/app/sources/widgets/add_source/add_source_form_widget.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

List<Story> formularioStories = [
  Story(
    section: 'Formulários',
    name: 'Contas',
    builder: (_, k) => AddContaFormWidget(
      onCancel: () {},
      onAdd: (conta) {
        print(conta.toJson());
      },
    ),
  ),
  Story(
    section: 'Formulários',
    name: 'Fontes (sources)',
    builder: (_, k) => AddSourceFormWidget(
      onCancel: () {},
      onAdd: (source) {
        print(source.toJson());
      },
    ),
  ),
  // Story(
  //   section: 'Formulários',
  //   name: 'Transações',
  //   builder: (_, k) => AddTransactionFormWidget(
  //     onCancel: () {},
  //     onSuccess: (t) {
  //       print(t.toJson());
  //     },
  //   ),
  // )
];
