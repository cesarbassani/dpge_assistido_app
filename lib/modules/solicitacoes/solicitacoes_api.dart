import 'dart:convert' as convert;

import 'package:dpge_assistido_app/domain/solicitacao.dart';
import 'package:dpge_assistido_app/utils/http_helper.dart' as http;
import 'package:http/http.dart';
// import 'package:http/http.dart' as http;

class SolicitacoesApi {
  static Future<List<Solicitacao>> getSolicitacoes() async {
    var url = Uri.https('hom.defensoria.ms.def.br', 'api/solicitar/todas');

    Response response = await http.get(url.toString());

    print('GET > $url');

    String jsonResult = response.body;
    print('Status code: ${response.statusCode}');
    print(jsonResult);

    List list = convert.json.decode(response.body);

    final solicitacoes =
        list.map<Solicitacao>((map) => Solicitacao.fromMap(map)).toList();

    return solicitacoes;
  }
}
