import 'dart:io';

import 'package:cred_pal/core/constants/app_resources/resources.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.imateStores1).existsSync(), isTrue);
    expect(File(Images.okayFones1).existsSync(), isTrue);
    expect(File(Images.casper).existsSync(), isTrue);
    expect(File(Images.dreamwork).existsSync(), isTrue);
    expect(File(Images.hubmart).existsSync(), isTrue);
    expect(File(Images.justfone).existsSync(), isTrue);
    expect(File(Images.justrite).existsSync(), isTrue);
    expect(File(Images.justused).existsSync(), isTrue);
    expect(File(Images.ogabassey1).existsSync(), isTrue);
    expect(File(Images.ogbassey).existsSync(), isTrue);
    expect(File(Images.orile).existsSync(), isTrue);
    expect(File(Images.pointek).existsSync(), isTrue);
    expect(File(Images.product1).existsSync(), isTrue);
    expect(File(Images.product2).existsSync(), isTrue);
    expect(File(Images.product3).existsSync(), isTrue);
    expect(File(Images.product4).existsSync(), isTrue);
    expect(File(Images.slot).existsSync(), isTrue);
  });
}
