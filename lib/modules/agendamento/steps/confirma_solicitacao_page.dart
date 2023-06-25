import 'package:dpge_assistido_app/utils/ui/app_theme.dart';
import 'package:dpge_assistido_app/widgets/app_button_default.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmaSolicitacaoPage extends StatefulWidget {
  const ConfirmaSolicitacaoPage({Key? key}) : super(key: key);

  @override
  State<ConfirmaSolicitacaoPage> createState() =>
      _ConfirmaSolicitacaoPageState();
}

class _ConfirmaSolicitacaoPageState extends State<ConfirmaSolicitacaoPage> {
  @override
  void initState() {
    // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/envelop.png'),
            const SizedBox(height: 20),
            Text(
              'Recebemos sua solicitação!',
              style: GoogleFonts.roboto(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                'Informamos que em até 4 (quatro) dias úteis entraremos em contato via plataforma ou celular que você registrou no pedido. \n\nNos próximos 10 (dez) dias, você não poderá fazer uma nova solicitação de atendimento para o mesmo assunto ou área. \n\nSe você precisar complementar essa solicitação ou se ocorrer alguma urgência nesse prazo de 10 (dez) dias, compareça presencialmente em alguma das unidades de atendimento da Defensoria Pública.',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: AppButtonDefault(
                  labelColor: AppTheme.colors.primary,
                  label: 'Concluir',
                  color: AppTheme.colors.background,
                  onPressed: () {
                    Navigator.of(context, rootNavigator: true).pop();
                  }),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // SystemChrome.setEnabledSystemUIOverlays(
    //     [SystemUiOverlay.top, SystemUiOverlay.bottom]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);

    super.dispose();
  }
}
