import 'package:dpge_assistido_app/domain/solicitacao.dart';
import 'package:dpge_assistido_app/modules/solicitacoes/solicitacao_page.dart';
import 'package:dpge_assistido_app/modules/solicitacoes/solicitacoes_api.dart';
import 'package:dpge_assistido_app/utils/nav.dart';
import 'package:dpge_assistido_app/utils/ui/colors_app.dart';
import 'package:dpge_assistido_app/widgets/app_button.dart';
import 'package:dpge_assistido_app/widgets/card_ajuda.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SolicitacoesListView extends StatefulWidget {
  const SolicitacoesListView({Key? key}) : super(key: key);

  @override
  State<SolicitacoesListView> createState() => _SolicitacoesListViewState();
}

class _SolicitacoesListViewState extends State<SolicitacoesListView>
    with AutomaticKeepAliveClientMixin<SolicitacoesListView> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    Future<List<Solicitacao>> future = SolicitacoesApi.getSolicitacoes();

    return FutureBuilder(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          print(snapshot.error);
          return const Center(
            child: Text(
              'Não foi possível buscar as solicitações',
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 18,
              ),
            ),
          );
        }
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        List<Solicitacao> solicitacoes = snapshot.data!;
        return RefreshIndicator(
          onRefresh: _onRefresh,
          child:
              solicitacoes.isNotEmpty ? _listView(solicitacoes) : _emptyList(),
        );
      },
    );
  }

  Container _listView(List<Solicitacao>? solicitacoes) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: ListView.builder(
        itemCount: solicitacoes != null ? solicitacoes.length : 0,
        itemBuilder: (context, index) {
          Solicitacao s = solicitacoes![index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      bottom: 5,
                    ),
                    child: InkWell(
                      onTap: () =>
                          push(context, SolicitacaoPage(solicitacao: s)),
                      child: ListTile(
                        title: Text(
                          s.assistido!.nome!,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            s.tipoAtendimento!,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('11 Jun 2022'),
                            const SizedBox(height: 10),
                            Flexible(
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: const Color(0XFF5E88D8),
                                    borderRadius: BorderRadius.circular(5)),
                                width: 100,
                                height: 25,
                                child: Center(
                                  child: Text(
                                    s.statusSolicitacao!,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      '1',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Container _emptyList() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Bem vindo(a) à Plataforma Digital!',
            style: GoogleFonts.roboto(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            'Aqui você realiza o agendamento para ser atendido em todos os serviços da Defensoria Pública de MS, na Capital ou no interior do Estado.',
            style: GoogleFonts.roboto(
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            'ATENÇÃO:',
            style: GoogleFonts.roboto(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: Icon(
              Icons.check_circle_outline,
              color: ColorsApp.i.primary,
            ),
            title: Text(
              'O agendamento feito por aqui serve tanto para atendimento presencial, em uma das unidades da Defensoria, quanto atendimento remoto;',
              style: GoogleFonts.roboto(
                fontSize: 14,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle_outline,
              color: ColorsApp.i.primary,
            ),
            title: Text(
              'Preencha todas os campos do formulário com muita atenção, pois o preenchimento incorreto poderá atrasar o seu atendimento;',
              style: GoogleFonts.roboto(
                fontSize: 14,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle_outline,
              color: ColorsApp.i.primary,
            ),
            title: Text(
              'O preenchimento total leva, em média, de 5 a 7 minutos.',
              style: GoogleFonts.roboto(
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Text(
            'Minhas Solicitações',
            style: GoogleFonts.roboto(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 10),
          const CardAjuda(
            isChecking: false,
            image: null,
            title: 'Você ainda não solicitou atendimento!',
            subtitle:
                'Clique no botão SOLICITAR para fazer sua primeira solicitação.',
          ),
          const SizedBox(height: 30),
          Container(
            width: double.infinity,
            child: AppButton(
              text: 'SOLICITAR',
              onPressed: () => Navigator.pushNamed(context, '/agendamento'),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _onRefresh() {
    setState(() {});
    return Future.delayed(const Duration(seconds: 3));
  }
}
