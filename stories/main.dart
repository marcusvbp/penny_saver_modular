import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

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
        ],
      );
}
