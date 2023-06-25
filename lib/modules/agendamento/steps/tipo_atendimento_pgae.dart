import 'package:dpge_assistido_app/utils/ui/app_theme.dart';
import 'package:dpge_assistido_app/widgets/app_button_default.dart';
import 'package:dpge_assistido_app/widgets/app_header_agendamento.dart';
import 'package:dpge_assistido_app/widgets/app_textformfield_default.dart';
import 'package:dpge_assistido_app/widgets/card_ajuda.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:validatorless/validatorless.dart';

class TipoAtendimentoPage extends StatefulWidget {
  const TipoAtendimentoPage({Key? key}) : super(key: key);

  @override
  State<TipoAtendimentoPage> createState() => _TipoAtendimentoPageState();
}

class _TipoAtendimentoPageState extends State<TipoAtendimentoPage> {
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
            title: 'Tipo de Atendimento',
            subTitle: 'Este atendimento é para você \nou outra pessoa?',
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
          const Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              top: 20,
              bottom: 5,
            ),
            child: CardAjuda(
              image: null,
              title: 'ATENDIMENTO PARA VOCÊ',
              subtitle:
                  'Quando precisar defender seu próprio direito, exemplos: \n\n'
                  '- Fazer divórcio; \n'
                  '- Pedir indenização; \n'
                  '- Solicitar medida protetiva.',
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: CardAjuda(
              image: null,
              title: 'ATENDIMENTO PARA OUTRA PESSOA',
              subtitle:
                  'Quando o direito for de outra pessoa, mas você que irá representá-lo na Defensoria, exemplos:\n\n'
                  '- Pedir pensão alimentícia para o(a) filho(a);\n'
                  '- Solicitar benefícios na execução penal em favor de pessoa presa;\n'
                  '- Quando tiver procuração para representar alguém;\n'
                  '- Pedir tratamento médico para terceira pessoa, etc.',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                AppButtonDefault(
                  label: 'Salvar e Continuar',
                  isEnabled: true,
                  onPressed: () {
                    Navigator.pushNamed(context, '/area');
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

  @override
  void dispose() {
    super.dispose();
    _controllerCpf.dispose();
    _controllerEmail.dispose();
    _controllerNome.dispose();
  }
}
