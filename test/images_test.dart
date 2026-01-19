import 'dart:io';

import 'package:cred_pal/core/constants/app_resources/resources.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.product1).existsSync(), isTrue);
    expect(File(Images.product2).existsSync(), isTrue);
    expect(File(Images.product3).existsSync(), isTrue);
    expect(File(Images.product4).existsSync(), isTrue);
  });
}
