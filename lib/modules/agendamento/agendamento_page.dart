import 'package:dpge_assistido_app/modules/agendamento/steps/area_pgae.dart';
import 'package:dpge_assistido_app/modules/agendamento/steps/caso_atendimento_pgae.dart';
import 'package:dpge_assistido_app/modules/agendamento/steps/confirma_solicitacao_page.dart';
import 'package:dpge_assistido_app/modules/agendamento/steps/dados_pessoais_pgae.dart';
import 'package:dpge_assistido_app/modules/agendamento/steps/descricao_pgae.dart';
import 'package:dpge_assistido_app/modules/agendamento/steps/endereco_pgae.dart';
import 'package:dpge_assistido_app/modules/agendamento/steps/modo_atendimento_pgae.dart';
import 'package:dpge_assistido_app/modules/agendamento/steps/processo_andamento_pgae.dart';
import 'package:dpge_assistido_app/modules/agendamento/steps/tipo_atendimento_pgae.dart';
import 'package:dpge_assistido_app/modules/agendamento/steps/upload_arquivos_pgae.dart';
import 'package:flutter/material.dart';

class AgendamentoPage extends StatefulWidget {
  const AgendamentoPage({Key? key}) : super(key: key);

  @override
  State<AgendamentoPage> createState() => _AgendamentoPageState();
}

class _AgendamentoPageState extends State<AgendamentoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agendamento'),
      ),
      body: Navigator(
        initialRoute: '/dados_pessoais',
        onGenerateRoute: (settings) {
          var route = settings.name;
          Widget page;
          switch (route) {
            case '/dados_pessoais':
              page = const DadosPessoaisPage();
              break;
            case '/endereco':
              page = const EnderecoPage();
              break;
            case '/tipoAtendimento':
              page = const TipoAtendimentoPage();
              break;
            case '/area':
              page = const AreaPage();
              break;
            case '/modoAtendimento':
              page = const ModoAtendimentoPage();
              break;
            case '/casoAtendimento':
              page = const CasoAtendimentoPage();
              break;
            case '/processoAndamento':
              page = const ProcessoAndamentoPage();
              break;
            case '/descricao':
              page = const DescricaoPage();
              break;
            case '/uploadArquivos':
              page = const UploadArquivosPage();
              break;
            case '/confirmaSolicitacao':
              page = const ConfirmaSolicitacaoPage();
              break;
            default:
              return null;
          }
          return MaterialPageRoute(
            builder: (context) => page,
            settings: settings,
          );
        },
      ),
    );
  }
}
