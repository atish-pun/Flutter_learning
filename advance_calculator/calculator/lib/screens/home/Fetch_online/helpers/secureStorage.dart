import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  final _storage = FlutterSecureStorage();

  Future setToken(String key, String value) async {
    var writeToken = await _storage.write(key: key, value: value);
    return writeToken;
  }

  Future getToken(String key) async {
    var readToken = await _storage.read(key: key);
    return readToken;
  }

  Future removeToken(String key) async {
    var deleteToken = await _storage.delete(key: key);
    return deleteToken;
  }
}
