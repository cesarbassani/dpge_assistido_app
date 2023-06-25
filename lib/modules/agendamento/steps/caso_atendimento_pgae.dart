import 'package:dpge_assistido_app/utils/ui/app_theme.dart';
import 'package:dpge_assistido_app/widgets/app_button_default.dart';
import 'package:dpge_assistido_app/widgets/app_header_agendamento.dart';
import 'package:dpge_assistido_app/widgets/card_ajuda.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:google_fonts/google_fonts.dart';

class CasoAtendimentoPage extends StatefulWidget {
  const CasoAtendimentoPage({Key? key}) : super(key: key);

  @override
  State<CasoAtendimentoPage> createState() => _CasoAtendimentoPageState();
}

class _CasoAtendimentoPageState extends State<CasoAtendimentoPage> {
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
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const AppHeaderAgendamento(
                  title: 'Atendimento para este caso',
                  subTitle: 'Esse é o primeiro atendimento para este caso?',
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
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                _cardCaso(
                    title: 'Primeiro atendimento neste caso', subtitle: null),
                const SizedBox(height: 15),
                _cardCaso(
                    title: 'Não é o primeiro atendimento neste caso',
                    subtitle: null),
                const SizedBox(height: 20),
              ],
            ),
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
                  Navigator.pushNamed(context, '/processoAndamento');
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
    );
  }

  Widget _cardCaso({required String title, required String? subtitle}) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      child: CardAjuda(
        image: null,
        title: title,
        subtitle: null,
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
