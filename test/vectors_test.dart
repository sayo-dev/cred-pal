import 'dart:io';

import 'package:cred_pal/core/constants/app_resources/resources.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('vectors assets test', () {
    expect(File(Vectors.info).existsSync(), isTrue);
    expect(File(Vectors.scan).existsSync(), isTrue);
    expect(File(Vectors.searchNormal).existsSync(), isTrue);
  });
}
