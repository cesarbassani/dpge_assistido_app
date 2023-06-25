import 'package:dpge_assistido_app/utils/ui/app_theme.dart';
import 'package:dpge_assistido_app/widgets/app_button_default.dart';
import 'package:dpge_assistido_app/widgets/app_header_agendamento.dart';
import 'package:dpge_assistido_app/widgets/card_ajuda.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:google_fonts/google_fonts.dart';

class AreaPage extends StatefulWidget {
  const AreaPage({Key? key}) : super(key: key);

  @override
  State<AreaPage> createState() => _AreaPageState();
}

class _AreaPageState extends State<AreaPage> {
  final _formKey = GlobalKey<FormState>();

  final _controllerCpf = MaskedTextController(mask: '000.000.000-00');
  final _controllerNome = TextEditingController();
  final _controllerEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          const AppHeaderAgendamento(
            title: 'Área',
            subTitle:
                'De acordo com o exemplo abaixo, selecione a \nárea que mais faz sentido para sua solicitação.',
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
              left: 16,
              right: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'SELECIONE UMA OPÇÃO:',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    color: AppTheme.colors.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          _cardArea(
              title: 'MULHERES EM SITUAÇÃO DE VIOLÊNCIA DOMÉSTICA',
              subtitle:
                  'Exemplos de ações: Medidas protetivas e outros processos nas varas de violência doméstica, em caso de mulheres em situação de violência.'),
          const SizedBox(height: 10),
          _cardArea(
            title: 'CÍVEL',
            subtitle:
                'Exemplos de ações: Locação/aluguel de imóveis (despejo, cobrança de aluguel e revisão do valor de aluguel); Ações para retomar imóvel (posse); Consignação em pagamento (pagar uma dívida quando a pessoa que deve receber discorda do valor ou não é encontrada).',
          ),
          const SizedBox(height: 10),
          _cardArea(
            title: 'CONSUMIDOR',
            subtitle:
                'Exemplos de ações: Revisão de contratos bancários (juros abusivos, valor de prestação alta etc.); Serviços de água, esgoto, energia e telefonia; Produtos com vício ou defeito; Plano de saúde particular.',
          ),
          const SizedBox(height: 10),
          _cardArea(
              title: 'AÇÕES CONTRA O MUNICÍPIO E O ESTADO',
              subtitle:
                  'Exemplos de ações: Correção no Registro Civil; Mandado de segurança; Exclusão de pontuação da carteira de habilitação; Alvará para sepultamento.'),
          const SizedBox(height: 10),
          _cardArea(
              title: 'SAÚDE PÚBLICA',
              subtitle:
                  'Exemplos de ações: Internação; Tratamento e remédio pelo SUS.'),
          const SizedBox(height: 10),
          _cardArea(
              title: 'INFÂNCIA',
              subtitle:
                  'Exemplos de ações: Vagas em EMEI\'s e escolas públicas; Guarda de crianças e adolescentes abrigadas, sofrendo em situação de violência real ou sem vínculo de parentesco; Autorização de viagem; Adolescente envolvido com ato infracional. '),
          const SizedBox(height: 10),
          _cardArea(
              title: 'EXECUÇÃO PENAL',
              subtitle:
                  'Exemplos de ações: Pessoal que esteja cumprindo pena.'),
          const SizedBox(height: 10),
          _cardArea(
              title: 'Criminal',
              subtitle:
                  'Exemplos de ações: Pessoa que esteja respondendo a processo criminal (sem sentença definitiva).'),
          const SizedBox(height: 10),
          _cardArea(
              title: 'SEGUNDA INSTÂNCIA',
              subtitle:
                  'Exemplos de ações: Processos que estão em fase de recurso no Tribunal de Justiça; Turma Recursal; STJ ou STF.'),
          const SizedBox(height: 10),
          _cardArea(
              title: 'FAMÍLIA',
              subtitle:
                  'Exemplos de ações: Pensão alimentícia (fixar, diminuir/aumentar ou deixar o pagamento); Pensão desde a gravidez; Divórcio quando o casal está de acordo; Guarda de criança e adolescente por parentes (pais, avós, tios); Regulamentação de visitação de parentes; interdição; inventário.'),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                AppButtonDefault(
                  label: 'Salvar e Continuar',
                  isEnabled: true,
                  onPressed: () {
                    Navigator.pushNamed(context, '/modoAtendimento');
                    // final formValid = _formKey.currentState?.validate() ?? false;
                    //
                    // if (formValid) {
                    //   _controllerCpf.updateMask('00000000000');
                    //   _controllerCelular.updateMask('00000000000');
                    //   controller.cadastrar(
                    //     nome: _controllerNome.text,
                    //     email: _controllerEmail.text,
                    //     cpf: _controllerCpf.text,
                    //     telefone1: _controllerCelular.text,
                    //     senha: _controllerSenha.text,
                    //     confirmaSenha: _controllerConfirmaSenha.text,
                    //     autorizarUsoDados: _validaPrivacidade ? "1" : null,
                    //   );
                    // }
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                AppButtonDefault(
                  label: 'Cancelar',
                  color: AppTheme.colors.buttonCancelColor,
                  onPressed: () => Navigator.pushNamed(context, '/auth/login'),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _cardArea({required String title, required String subtitle}) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      child: CardAjuda(
        image: null,
        title: title,
        subtitle: subtitle,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controllerCpf.dispose();
    _controllerEmail.dispose();
    _controllerNome.dispose();
  }
}
