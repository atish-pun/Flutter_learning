import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  final _storage = FlutterSecureStorage();

  Future writeToken(String key, String value) async {
    var writetoken = await _storage.write(key: key, value: value);
    return writetoken;
  }

  Future readToken(String key) async {
    var readtoken = await _storage.read(key: key);
    return readtoken;
  }

  Future deleteToken(String key) async {
    var deletetoken = await _storage.delete(key: key);
    return deletetoken;
  }
}
