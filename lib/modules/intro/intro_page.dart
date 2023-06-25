import 'package:dpge_assistido_app/utils/ui/text_styles.dart';
import 'package:dpge_assistido_app/widgets/card_ajuda.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage>
    with AutomaticKeepAliveClientMixin<IntroPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text(
                  'Ajuda',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 300,
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
            ),
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return const CardAjuda(
                  isChecking: false,
                  image: 'assets/images/question.png',
                  title: 'Perguntas Frequentes',
                  subtitle:
                      'Saiba tudo sobre o atendimento na Defensoria Pública de Mato Grosso do Sul.',
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 16,
            ),
            child: Row(
              children: [
                Text(
                  'Notícias',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
            ),
            child: newsList(),
          ),
        ],
      ),
    );
  }

  Widget newsList() {
    return SizedBox(
        height: 100.0,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              width: 300.0,
              child: Card(
                child: ListTile(
                  title: Text(
                    'Defensoria de MS é jurada em concurso para criação do Mascote da Educação Fiscal do MS".',
                    style: TextStyles.i.textRegular.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  leading: Container(
                    width: 67,
                    height: 71,
                    child: Image.asset('assets/images/noticia.png'),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 300.0,
              child: Card(
                child: ListTile(
                  title: Text(
                    'Defensoria de MS é jurada em concurso para criação do \"Mascote da Educação Fiscal do MS\".',
                    style: TextStyles.i.textRegular.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  leading: Container(
                    width: 67,
                    height: 71,
                    child: Image.asset('assets/images/noticia.png'),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
