import 'package:dpge_assistido_app/utils/ui/app_theme.dart';
import 'package:dpge_assistido_app/widgets/app_button_default.dart';
import 'package:dpge_assistido_app/widgets/app_header_agendamento.dart';
import 'package:dpge_assistido_app/widgets/app_textformfield_default.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:validatorless/validatorless.dart';

class DadosPessoaisPage extends StatefulWidget {
  const DadosPessoaisPage({Key? key}) : super(key: key);

  @override
  State<DadosPessoaisPage> createState() => _DadosPessoaisPageState();
}

class _DadosPessoaisPageState extends State<DadosPessoaisPage> {
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
            title: 'Dados Pessoais',
            subTitle:
                'Você precisa concluir o seu cadastro para \nconseguir fazer o agendamento.',
          ),
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTextFormFieldDefault(
                    label: 'Nome Completo',
                    controller: _controllerNome,
                    validator: Validatorless.required(
                      'Digite seu nome completo',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          left: 15,
                          right: 15,
                        ),
                        color: Colors.white,
                        width: 20,
                        height: 20,
                        child: Checkbox(
                          side: BorderSide(width: 1),
                          value: false,
                          onChanged: (value) {},
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Flexible(
                          child: Text(
                            "LGBTQIA+",
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              color: AppTheme.colors.textLabel,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AppTextFormFieldDefault(
                    label: 'Nome Social',
                    controller: _controllerCpf,
                    validator: Validatorless.multiple([
                      Validatorless.required('Nome social é obrigatório'),
                    ]),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          left: 15,
                          right: 15,
                        ),
                        color: Colors.white,
                        width: 20,
                        height: 20,
                        child: Checkbox(
                          side: const BorderSide(width: 1),
                          value: false,
                          onChanged: (value) {},
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Flexible(
                          child: Text(
                            "Pessoa com Deficiência",
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              color: AppTheme.colors.textLabel,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AppTextFormFieldDefault(
                    label: 'Data de Nascimento',
                    controller: _controllerEmail,
                    validator: Validatorless.multiple([
                      Validatorless.required(
                          'Data de Nascimento é obrigatório'),
                    ]),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AppTextFormFieldDefault(
                    label: 'CPF',
                    controller: _controllerEmail,
                    validator: Validatorless.multiple([
                      Validatorless.required('CPF é obrigatório'),
                      Validatorless.cpf('Digite um CPF válido'),
                    ]),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AppTextFormFieldDefault(
                    label: 'RG',
                    controller: _controllerEmail,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AppTextFormFieldDefault(
                    label: 'Órgão Emissor',
                    controller: _controllerEmail,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AppTextFormFieldDefault(
                    label: 'Nome da Mãe',
                    controller: _controllerEmail,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AppTextFormFieldDefault(
                    label: 'Nome do Pai',
                    controller: _controllerEmail,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AppTextFormFieldDefault(
                    label: 'Nacionalidade',
                    controller: _controllerEmail,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AppTextFormFieldDefault(
                    label: 'Telefone 1',
                    controller: _controllerEmail,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AppTextFormFieldDefault(
                    label: 'Telefone 2',
                    controller: _controllerEmail,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AppTextFormFieldDefault(
                    label: 'E-MAIL',
                    controller: _controllerEmail,
                    validator: Validatorless.multiple([
                      Validatorless.required('E-mail obrigatório'),
                      Validatorless.email('Digite um e-mail válido'),
                    ]),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AppTextFormFieldDefault(
                    label: 'Profissão',
                    controller: _controllerEmail,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AppTextFormFieldDefault(
                    label: 'Estado Civil',
                    controller: _controllerEmail,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AppTextFormFieldDefault(
                    label: 'Raça',
                    controller: _controllerEmail,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AppTextFormFieldDefault(
                    label: 'Raça',
                    controller: _controllerEmail,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AppButtonDefault(
                    label: 'Salvar e Continuar',
                    isEnabled: true,
                    onPressed: () {
                      Navigator.pushNamed(context, '/endereco');
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
                    onPressed: () =>
                        Navigator.pushNamed(context, '/auth/login'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
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
