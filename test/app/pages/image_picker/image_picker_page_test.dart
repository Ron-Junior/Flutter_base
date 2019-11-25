import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:flutter_base/app/pages/image_picker/image_picker_page.dart';

main() {
  testWidgets('ImagePickerPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(ImagePickerPage(title: 'ImagePicker')));
    final titleFinder = find.text('ImagePicker');
    expect(titleFinder, findsOneWidget);
  });
}
