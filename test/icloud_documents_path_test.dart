import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:icloud_documents_path/icloud_documents_path.dart';

void main() {
  const MethodChannel channel = MethodChannel('icloud_documents_path');

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
    expect(await IcloudDocumentsPath.platformVersion, '42');
  });
}
