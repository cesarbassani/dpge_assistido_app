import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Solicitacao1 {
  final int id;
  final String area_atuacao;
  final String descricaoSolicitacao;
  final String dataInclusao;
  final String statusSolicitacao;
  final String nomeAssistido;

  Solicitacao1({
    required this.id,
    required this.area_atuacao,
    required this.descricaoSolicitacao,
    required this.dataInclusao,
    required this.statusSolicitacao,
    required this.nomeAssistido,
  });

  Solicitacao1 copyWith({
    int? id,
    String? area_atuacao,
    String? descricaoSolicitacao,
    String? dataInclusao,
    String? statusSolicitacao,
    String? nomeAssistido,
  }) {
    return Solicitacao1(
      id: id ?? this.id,
      area_atuacao: area_atuacao ?? this.area_atuacao,
      descricaoSolicitacao: descricaoSolicitacao ?? this.descricaoSolicitacao,
      dataInclusao: dataInclusao ?? this.dataInclusao,
      statusSolicitacao: statusSolicitacao ?? this.statusSolicitacao,
      nomeAssistido: nomeAssistido ?? this.nomeAssistido,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'id_area_atuacao': area_atuacao,
      'descricaoSolicitacao': descricaoSolicitacao,
      'dataInclusao': dataInclusao,
      'statusSolicitacao': statusSolicitacao,
      'nomeAssistido': nomeAssistido,
    };
  }

  factory Solicitacao1.fromMap(Map<String, dynamic> map) {
    return Solicitacao1(
      id: map['id'] as int,
      area_atuacao: map['area_atuacao'] as String,
      descricaoSolicitacao: map['descricaoSolicitacao'] as String,
      dataInclusao: map['dataInclusao'] as String,
      statusSolicitacao: map['statusSolicitacao'] as String,
      nomeAssistido: map['nomeAssistido'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Solicitacao1.fromJson(String source) =>
      Solicitacao1.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Solicitacao(id: $id, id_area_atuacao: $area_atuacao, descricaoSolicitacao: $descricaoSolicitacao, dataInclusao: $dataInclusao, statusSolicitacao: $statusSolicitacao, nomeAssistido: $nomeAssistido)';
  }
}
