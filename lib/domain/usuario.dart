import 'dart:convert';
import 'dart:convert' as convert;

import 'package:dpge_assistido_app/utils/prefs.dart';

class Usuario {
  final String? id;
  final String? name;
  final String? accessToken;

  Usuario({this.id, required this.name, required this.accessToken});

  Usuario.empty()
      : id = '',
        name = '',
        accessToken = '';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id_usuario': id,
      'name': name,
      'access_token': accessToken,
    };
  }

  factory Usuario.fromMap(Map<String, dynamic> map) {
    return Usuario(
      id: map['id_usuario'] as String,
      name: map['name'] as String,
      accessToken: map['access_token'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Usuario.fromJson(String source) =>
      Usuario.fromMap(json.decode(source) as Map<String, dynamic>);

  void save() {
    Map map = toMap();
    String json = convert.json.encode(map);

    Prefs.setString('user.prefs', json);
  }

  static void clear() {
    Prefs.setString('user.prefs', '');
  }

  static Future<Usuario?> get() async {
    String json = await Prefs.getString('user.prefs');
    if (json.isEmpty) {
      return null;
    }
    Map<String, dynamic> map = convert.json.decode(json);

    Usuario user = Usuario.fromMap(map);

    return user;
  }

  @override
  String toString() {
    return 'Usuario{id: $id, name: $name, accessToken: $accessToken}';
  }
}
