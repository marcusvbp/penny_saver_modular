import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:penny_saver/app/widgets/chip_tile.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

import 'cards_stories.dart';
import 'formularios_stories.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Storybook(
        themeMode: ThemeMode.light,
        storyWrapperBuilder: (context, story, child) => Stack(
          children: [
            Container(
              padding: story.padding,
              color: Theme.of(context).canvasColor,
              child: Center(child: child),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  story.name,
                  style: const TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ),
          ],
        ),
        children: [
          ...formularioStories,
          ...cardStories,
          Story(
            name: 'Chip Tile',
            builder: (_, k) => ChipTile(
              value: k.text(label: 'Value', initial: 'Chip Tile'),
              label: k.text(label: 'Label', initial: 'label'),
              color: k.options(
                label: 'Colors',
                initial: Colors.blueGrey,
                options: [
                  Option('Verde', Colors.green),
                  Option('Amarelo', Colors.yellow),
                  Option('Azul claro', Colors.lightBlue),
                ],
              ),
            ),
          )
        ],
      );
}
