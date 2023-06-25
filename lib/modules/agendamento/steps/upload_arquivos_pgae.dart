import 'package:dpge_assistido_app/utils/ui/app_theme.dart';
import 'package:dpge_assistido_app/widgets/app_button_default.dart';
import 'package:dpge_assistido_app/widgets/app_header_agendamento.dart';
import 'package:dpge_assistido_app/widgets/card_ajuda.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadArquivosPage extends StatefulWidget {
  const UploadArquivosPage({Key? key}) : super(key: key);

  @override
  State<UploadArquivosPage> createState() => _UploadArquivosPageState();
}

class _UploadArquivosPageState extends State<UploadArquivosPage> {
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
                  title: 'Arquivos',
                  subTitle:
                      'Envie os documentos necessário. Arquivos: \nJPG, PNG, PDF e Excel. Limite: 100MB.',
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                    left: 16,
                    right: 16,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'ENVIO DE DOCUMENTOS',
                            style: GoogleFonts.roboto(
                              fontSize: 16,
                              color: AppTheme.colors.primary,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 62,
                            height: 62,
                            decoration: BoxDecoration(
                              color: Color(0xFF5E88D8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.camera_alt,
                                  color: Colors.white,
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  'Escanear',
                                  style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 25),
                          Container(
                            width: 62,
                            height: 62,
                            decoration: BoxDecoration(
                              color: const Color(0xFF5E88D8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.drive_file_move_sharp,
                                  color: Colors.white,
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  'Encontrar',
                                  style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                _cardUpload(
                  title: 'Imagem0001.png',
                  subtitle: '527kb',
                ),
                const SizedBox(height: 10),
                _cardUpload(
                  title: 'Imagem0003.pgn',
                  subtitle: '527kb',
                ),
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
                  Navigator.of(context, rootNavigator: true).pop();
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

  Widget _cardUpload({required String title, required String? subtitle}) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      child: CardAjuda(
        image: null,
        title: title,
        subtitle: subtitle,
        iconChecked: const Icon(
          Icons.delete,
          color: Colors.white,
        ),
        colorChecked: Colors.redAccent,
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
