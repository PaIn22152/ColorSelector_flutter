import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:color_selector/color_selector.dart';

void main() {
  const MethodChannel channel = MethodChannel('color_selector');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await ColorSelector.platformVersion, '42');
  });
}
