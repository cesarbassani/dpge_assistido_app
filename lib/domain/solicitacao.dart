import 'dart:convert';

import 'package:dpge_assistido_app/domain/assistido.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Solicitacao {
  final int? id;
  final String? dataInclusao;
  final String? dataAlteracao;
  final String? usuarioCriacao;
  final String? usuarioUltimaAlteracao;
  final int? id_area_atuacao;
  final String? numeroProcesso;
  final String? descricaoSolicitacao;
  final String? parteProcesso;
  final String? nomeOutraPessoa;
  final String? parentesco;
  final String? tipoSolicitacao;
  final String? statusSolicitacao;
  final String? tipoAtendimento;
  final String? caminhoArquivo;
  final int? idFatoNarrado;
  final String? justificativaFinalizacao;
  final String? observacaoAtendente;
  final String? justificativaAlteracao;
  final String? municipio;
  final Assistido? assistido;
  final int? idRepresentante;
  final String? descricaoAssistido;
  final String? descricaoRepresentante;
  final String? statusMensagem;
  final String? tipoDispositivo;
  final String? atendimentoTerceiros;
  final String? cpfAssistidoTerceiro;
  final int? idAssistido;
  final String? cpfAssistidoRepresentante;

  Solicitacao({
    this.id,
    this.dataInclusao,
    this.dataAlteracao,
    this.usuarioCriacao,
    this.usuarioUltimaAlteracao,
    this.id_area_atuacao,
    this.numeroProcesso,
    this.descricaoSolicitacao,
    this.parteProcesso,
    this.nomeOutraPessoa,
    this.parentesco,
    this.tipoSolicitacao,
    this.statusSolicitacao,
    this.tipoAtendimento,
    this.caminhoArquivo,
    this.idFatoNarrado,
    this.justificativaFinalizacao,
    this.observacaoAtendente,
    this.justificativaAlteracao,
    this.municipio,
    this.assistido,
    this.idRepresentante,
    this.descricaoAssistido,
    this.descricaoRepresentante,
    this.statusMensagem,
    this.tipoDispositivo,
    this.atendimentoTerceiros,
    this.cpfAssistidoTerceiro,
    this.idAssistido,
    this.cpfAssistidoRepresentante,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'dataInclusao': dataInclusao,
      'dataAlteracao': dataAlteracao,
      'usuarioCriacao': usuarioCriacao,
      'usuarioUltimaAlteracao': usuarioUltimaAlteracao,
      'id_area_atuacao': id_area_atuacao,
      'numeroProcesso': numeroProcesso,
      'descricaoSolicitacao': descricaoSolicitacao,
      'parteProcesso': parteProcesso,
      'nomeOutraPessoa': nomeOutraPessoa,
      'parentesco': parentesco,
      'tipoSolicitacao': tipoSolicitacao,
      'statusSolicitacao': statusSolicitacao,
      'tipoAtendimento': tipoAtendimento,
      'caminhoArquivo': caminhoArquivo,
      'idFatoNarrado': idFatoNarrado,
      'justificativaFinalizacao': justificativaFinalizacao,
      'observacaoAtendente': observacaoAtendente,
      'justificativaAlteracao': justificativaAlteracao,
      'municipio': municipio,
      'assistido': assistido?.toMap(),
      'idRepresentante': idRepresentante,
      'descricaoAssistido': descricaoAssistido,
      'descricaoRepresentante': descricaoRepresentante,
      'statusMensagem': statusMensagem,
      'tipoDispositivo': tipoDispositivo,
      'atendimentoTerceiros': atendimentoTerceiros,
      'cpfAssistidoTerceiro': cpfAssistidoTerceiro,
      'idAssistido': idAssistido,
      'cpfAssistidoRepresentante': cpfAssistidoRepresentante,
    };
  }

  factory Solicitacao.fromMap(Map<String, dynamic> map) {
    return Solicitacao(
      id: map['id'] != null ? map['id'] as int : null,
      dataInclusao:
          map['dataInclusao'] != null ? map['dataInclusao'] as String : null,
      dataAlteracao:
          map['dataAlteracao'] != null ? map['dataAlteracao'] as String : null,
      usuarioCriacao: map['usuarioCriacao'] != null
          ? map['usuarioCriacao'] as String
          : null,
      usuarioUltimaAlteracao: map['usuarioUltimaAlteracao'] != null
          ? map['usuarioUltimaAlteracao'] as String
          : null,
      id_area_atuacao:
          map['id_area_atuacao'] != null ? map['id_area_atuacao'] as int : null,
      numeroProcesso: map['numeroProcesso'] != null
          ? map['numeroProcesso'] as String
          : null,
      descricaoSolicitacao: map['descricaoSolicitacao'] != null
          ? map['descricaoSolicitacao'] as String
          : null,
      parteProcesso:
          map['parteProcesso'] != null ? map['parteProcesso'] as String : null,
      nomeOutraPessoa: map['nomeOutraPessoa'] != null
          ? map['nomeOutraPessoa'] as String
          : null,
      parentesco:
          map['parentesco'] != null ? map['parentesco'] as String : null,
      tipoSolicitacao: map['tipoSolicitacao'] != null
          ? map['tipoSolicitacao'] as String
          : null,
      statusSolicitacao: map['statusSolicitacao'] != null
          ? map['statusSolicitacao'] as String
          : null,
      tipoAtendimento: map['tipoAtendimento'] != null
          ? map['tipoAtendimento'] as String
          : null,
      caminhoArquivo: map['caminhoArquivo'] != null
          ? map['caminhoArquivo'] as String
          : null,
      idFatoNarrado:
          map['idFatoNarrado'] != null ? map['idFatoNarrado'] as int : null,
      justificativaFinalizacao: map['justificativaFinalizacao'] != null
          ? map['justificativaFinalizacao'] as String
          : null,
      observacaoAtendente: map['observacaoAtendente'] != null
          ? map['observacaoAtendente'] as String
          : null,
      justificativaAlteracao: map['justificativaAlteracao'] != null
          ? map['justificativaAlteracao'] as String
          : null,
      municipio: map['municipio'] != null ? map['municipio'] as String : null,
      assistido: map['assistido'] != null
          ? Assistido.fromMap(map['assistido'] as Map<String, dynamic>)
          : null,
      idRepresentante:
          map['idRepresentante'] != null ? map['idRepresentante'] as int : null,
      descricaoAssistido: map['descricaoAssistido'] != null
          ? map['descricaoAssistido'] as String
          : null,
      descricaoRepresentante: map['descricaoRepresentante'] != null
          ? map['descricaoRepresentante'] as String
          : null,
      statusMensagem: map['statusMensagem'] != null
          ? map['statusMensagem'] as String
          : null,
      tipoDispositivo: map['tipoDispositivo'] != null
          ? map['tipoDispositivo'] as String
          : null,
      atendimentoTerceiros: map['atendimentoTerceiros'] != null
          ? map['atendimentoTerceiros'] as String
          : null,
      cpfAssistidoTerceiro: map['cpfAssistidoTerceiro'] != null
          ? map['cpfAssistidoTerceiro'] as String
          : null,
      idAssistido:
          map['idAssistido'] != null ? map['idAssistido'] as int : null,
      cpfAssistidoRepresentante: map['cpfAssistidoRepresentante'] != null
          ? map['cpfAssistidoRepresentante'] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Solicitacao.fromJson(String source) =>
      Solicitacao.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Solicitacao(id: $id, dataInclusao: $dataInclusao, dataAlteracao: $dataAlteracao, usuarioCriacao: $usuarioCriacao, usuarioUltimaAlteracao: $usuarioUltimaAlteracao, id_area_atuacao: $id_area_atuacao, numeroProcesso: $numeroProcesso, descricaoSolicitacao: $descricaoSolicitacao, parteProcesso: $parteProcesso, nomeOutraPessoa: $nomeOutraPessoa, parentesco: $parentesco, tipoSolicitacao: $tipoSolicitacao, statusSolicitacao: $statusSolicitacao, tipoAtendimento: $tipoAtendimento, caminhoArquivo: $caminhoArquivo, idFatoNarrado: $idFatoNarrado, justificativaFinalizacao: $justificativaFinalizacao, observacaoAtendente: $observacaoAtendente, justificativaAlteracao: $justificativaAlteracao, municipio: $municipio, assistido: $assistido, idRepresentante: $idRepresentante, descricaoAssistido: $descricaoAssistido, descricaoRepresentante: $descricaoRepresentante, statusMensagem: $statusMensagem, tipoDispositivo: $tipoDispositivo, atendimentoTerceiros: $atendimentoTerceiros, cpfAssistidoTerceiro: $cpfAssistidoTerceiro, idAssistido: $idAssistido, cpfAssistidoRepresentante: $cpfAssistidoRepresentante)';
  }
}
