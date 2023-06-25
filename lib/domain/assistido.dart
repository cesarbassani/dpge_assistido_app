// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Assistido {
  final int? id;
  final String? dataInclusao;
  final String? dataAlteracao;
  final String? usuarioCriacao;
  final String? usuarioUltimaAlteracao;
  final String? nome;
  final String? nomeSocial;
  final String? rg;
  final String? cpf;
  final String? dataNascimento;
  final String? mae;
  final String? pai;
  final int? id_profissao;
  final String? estadoCivil;
  final String? raca;
  final String? sexo;
  final String? orgaoExpedidor;
  final int? id_nacionalidade;
  final String? siglaUF;
  final String? dataCadastro;
  final String? celular;
  final String? email;
  final String? telefone1;
  final String? telefone2;
  final String? telefone3;
  final String? usuarioCadastro;
  final int? lgbt;
  final String? observacaoCelular;
  final String? observacaoTelefone1;
  final String? observacaoTelefone2;
  final String? observacaoTelefone3;
  final int? id_estabelecimento;
  final String? dataProgressaoRegime;
  final String? dataLivramentoCondicional;
  final String? dataTerminoPena;
  final String? periodoPenal;
  final String? portadorDeficiencia;
  final String? nomeNormalizado;
  final String? endereco;
  final String? status;
  final String? terceiro;

  Assistido(
      this.id,
      this.dataInclusao,
      this.dataAlteracao,
      this.usuarioCriacao,
      this.usuarioUltimaAlteracao,
      this.nome,
      this.nomeSocial,
      this.rg,
      this.cpf,
      this.dataNascimento,
      this.mae,
      this.pai,
      this.id_profissao,
      this.estadoCivil,
      this.raca,
      this.sexo,
      this.orgaoExpedidor,
      this.id_nacionalidade,
      this.siglaUF,
      this.dataCadastro,
      this.celular,
      this.email,
      this.telefone1,
      this.telefone2,
      this.telefone3,
      this.usuarioCadastro,
      this.lgbt,
      this.observacaoCelular,
      this.observacaoTelefone1,
      this.observacaoTelefone2,
      this.observacaoTelefone3,
      this.id_estabelecimento,
      this.dataProgressaoRegime,
      this.dataLivramentoCondicional,
      this.dataTerminoPena,
      this.periodoPenal,
      this.portadorDeficiencia,
      this.nomeNormalizado,
      this.endereco,
      this.status,
      this.terceiro);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'dataInclusao': dataInclusao,
      'dataAlteracao': dataAlteracao,
      'usuarioCriacao': usuarioCriacao,
      'usuarioUltimaAlteracao': usuarioUltimaAlteracao,
      'nome': nome,
      'nomeSocial': nomeSocial,
      'rg': rg,
      'cpf': cpf,
      'dataNascimento': dataNascimento,
      'mae': mae,
      'pai': pai,
      'id_profissao': id_profissao,
      'estadoCivil': estadoCivil,
      'raca': raca,
      'sexo': sexo,
      'orgaoExpedidor': orgaoExpedidor,
      'id_nacionalidade': id_nacionalidade,
      'siglaUF': siglaUF,
      'dataCadastro': dataCadastro,
      'celular': celular,
      'email': email,
      'telefone1': telefone1,
      'telefone2': telefone2,
      'telefone3': telefone3,
      'usuarioCadastro': usuarioCadastro,
      'lgbt': lgbt,
      'observacaoCelular': observacaoCelular,
      'observacaoTelefone1': observacaoTelefone1,
      'observacaoTelefone2': observacaoTelefone2,
      'observacaoTelefone3': observacaoTelefone3,
      'id_estabelecimento': id_estabelecimento,
      'dataProgressaoRegime': dataProgressaoRegime,
      'dataLivramentoCondicional': dataLivramentoCondicional,
      'dataTerminoPena': dataTerminoPena,
      'periodoPenal': periodoPenal,
      'portadorDeficiencia': portadorDeficiencia,
      'nomeNormalizado': nomeNormalizado,
      'endereco': endereco,
      'status': status,
      'terceiro': terceiro,
    };
  }

  factory Assistido.fromMap(Map<String, dynamic> map) {
    return Assistido(
      map['id'] != null ? map['id'] as int : null,
      map['dataInclusao'] != null ? map['dataInclusao'] as String : null,
      map['dataAlteracao'] != null ? map['dataAlteracao'] as String : null,
      map['usuarioCriacao'] != null ? map['usuarioCriacao'] as String : null,
      map['usuarioUltimaAlteracao'] != null
          ? map['usuarioUltimaAlteracao'] as String
          : null,
      map['nome'] != null ? map['nome'] as String : null,
      map['nomeSocial'] != null ? map['nomeSocial'] as String : null,
      map['rg'] != null ? map['rg'] as String : null,
      map['cpf'] != null ? map['cpf'] as String : null,
      map['dataNascimento'] != null ? map['dataNascimento'] as String : null,
      map['mae'] != null ? map['mae'] as String : null,
      map['pai'] != null ? map['pai'] as String : null,
      map['id_profissao'] != null ? map['id_profissao'] as int : null,
      map['estadoCivil'] != null ? map['estadoCivil'] as String : null,
      map['raca'] != null ? map['raca'] as String : null,
      map['sexo'] != null ? map['sexo'] as String : null,
      map['orgaoExpedidor'] != null ? map['orgaoExpedidor'] as String : null,
      map['id_nacionalidade'] != null ? map['id_nacionalidade'] as int : null,
      map['siglaUF'] != null ? map['siglaUF'] as String : '',
      map['dataCadastro'] != null ? map['dataCadastro'] as String : null,
      map['celular'] != null ? map['celular'] as String : null,
      map['email'] != null ? map['email'] as String : null,
      map['telefone1'] != null ? map['telefone1'] as String : null,
      map['telefone2'] != null ? map['telefone2'] as String : null,
      map['telefone3'] != null ? map['telefone3'] as String : null,
      map['usuarioCadastro'] != null ? map['usuarioCadastro'] as String : null,
      map['lgbt'] != null ? map['lgbt'] as int : null,
      map['observacaoCelular'] != null
          ? map['observacaoCelular'] as String
          : null,
      map['observacaoTelefone1'] != null
          ? map['observacaoTelefone1'] as String
          : null,
      map['observacaoTelefone2'] != null
          ? map['observacaoTelefone2'] as String
          : null,
      map['observacaoTelefone3'] != null
          ? map['observacaoTelefone3'] as String
          : null,
      map['id_estabelecimento'] != null
          ? map['id_estabelecimento'] as int
          : null,
      map['dataProgressaoRegime'] != null
          ? map['dataProgressaoRegime'] as String
          : null,
      map['dataLivramentoCondicional'] != null
          ? map['dataLivramentoCondicional'] as String
          : null,
      map['dataTerminoPena'] != null ? map['dataTerminoPena'] as String : null,
      map['periodoPenal'] != null ? map['periodoPenal'] as String : null,
      map['portadorDeficiencia'] != null
          ? map['portadorDeficiencia'] as String
          : null,
      map['nomeNormalizado'] != null ? map['nomeNormalizado'] as String : null,
      map['endereco'] != null ? map['endereco'] as String : null,
      map['status'] != null ? map['status'] as String : null,
      map['terceiro'] != null ? map['terceiro'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Assistido.fromJson(String source) =>
      Assistido.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Assistido(id: $id, dataInclusao: $dataInclusao, dataAlteracao: $dataAlteracao, usuarioCriacao: $usuarioCriacao, usuarioUltimaAlteracao: $usuarioUltimaAlteracao, nome: $nome, nomeSocial: $nomeSocial, rg: $rg, cpf: $cpf, dataNascimento: $dataNascimento, mae: $mae, pai: $pai, id_profissao: $id_profissao, estadoCivil: $estadoCivil, raca: $raca, sexo: $sexo, orgaoExpedidor: $orgaoExpedidor, id_nacionalidade: $id_nacionalidade, siglaUF: $siglaUF, dataCadastro: $dataCadastro, celular: $celular, email: $email, telefone1: $telefone1, telefone2: $telefone2, telefone3: $telefone3, usuarioCadastro: $usuarioCadastro, lgbt: $lgbt, observacaoCelular: $observacaoCelular, observacaoTelefone1: $observacaoTelefone1, observacaoTelefone2: $observacaoTelefone2, observacaoTelefone3: $observacaoTelefone3, id_estabelecimento: $id_estabelecimento, dataProgressaoRegime: $dataProgressaoRegime, dataLivramentoCondicional: $dataLivramentoCondicional, dataTerminoPena: $dataTerminoPena, periodoPenal: $periodoPenal, portadorDeficiencia: $portadorDeficiencia, nomeNormalizado: $nomeNormalizado, endereco: $endereco, status: $status, terceiro: $terceiro)';
  }
}
