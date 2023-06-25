import 'dart:convert';

import 'package:dpge_assistido_app/domain/usuario.dart';
import 'package:dpge_assistido_app/modules/api_response.dart';
import 'package:http/http.dart' as http;

class LoginApi {
  static Future<ApiResponse<Usuario>> login(String login, String senha) async {
    try {
      var url = Uri.https('hom.defensoria.ms.def.br', 'api/login');

      Map params = {
        "usuario": login,
        "senha": senha,
      };

      Map<String, String> headers = {
        'Content-Type': 'application/json',
      };

      String s = json.encode(params);

      var response = await http.post(url, body: s, headers: headers);

      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      Map<String, dynamic> mapResponse = json.decode(response.body);

      if (response.statusCode == 200) {
        String name = mapResponse['name'];
        String accessToken = mapResponse['access_token'];

        final usuario = Usuario.fromMap(mapResponse);

        usuario.save();

        return ApiResponse.ok(usuario);
      }

      return ApiResponse.error(mapResponse['message']);
    } catch (error, exception) {
      print('Erro no login $error > $exception');
      return ApiResponse.error('Não foi possível fazer o login!');
    }
  }
}
