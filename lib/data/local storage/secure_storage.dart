// ignore_for_file: prefer_const_constructors

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'dart:developer' as developer;

class SecureStorage {
  final FlutterSecureStorage storage = FlutterSecureStorage();

  writeSecureData(String key, value) async{
    await storage.write(key: key, value: value);
  }

  readSecureData(String key) async{
    String value = await storage.read(key: key) ?? 'No data found!';
    developer.log('Data read from secure storage: $value');

  }

}