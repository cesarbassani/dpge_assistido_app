import 'package:dpge_assistido_app/utils/ui/app_theme.dart';
import 'package:dpge_assistido_app/widgets/app_button_default.dart';
import 'package:dpge_assistido_app/widgets/app_header_agendamento.dart';
import 'package:dpge_assistido_app/widgets/app_textformfield_default.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:validatorless/validatorless.dart';

class EnderecoPage extends StatefulWidget {
  const EnderecoPage({Key? key}) : super(key: key);

  @override
  State<EnderecoPage> createState() => _EnderecoPageState();
}

class _EnderecoPageState extends State<EnderecoPage> {
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
            title: 'Endereço',
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
                    label: 'CEP',
                    controller: _controllerNome,
                    validator: Validatorless.required(
                      'Digite o seu CEP',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AppTextFormFieldDefault(
                    label: 'Logradouro',
                    controller: _controllerCpf,
                    validator: Validatorless.multiple([
                      Validatorless.required('Logradouro é obrigatório'),
                    ]),
                  ),
                  const SizedBox(height: 10),
                  AppTextFormFieldDefault(
                    label: 'Nº',
                    controller: _controllerEmail,
                    validator: Validatorless.multiple([
                      Validatorless.required('Número é obrigatório'),
                    ]),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AppTextFormFieldDefault(
                    label: 'Complemento',
                    controller: _controllerEmail,
                    validator: Validatorless.multiple([]),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AppTextFormFieldDefault(
                    label: 'Bairro',
                    controller: _controllerEmail,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AppTextFormFieldDefault(
                    label: 'Quadra',
                    controller: _controllerEmail,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AppTextFormFieldDefault(
                    label: 'Lote',
                    controller: _controllerEmail,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AppTextFormFieldDefault(
                    label: 'UF',
                    controller: _controllerEmail,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AppTextFormFieldDefault(
                    label: 'Cidade',
                    controller: _controllerEmail,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AppButtonDefault(
                    label: 'Salvar e Continuar',
                    isEnabled: true,
                    onPressed: () {
                      Navigator.pushNamed(context, '/tipoAtendimento');
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
