import 'package:dpge_assistido_app/domain/solicitacao.dart';
import 'package:dpge_assistido_app/utils/ui/my_text.dart';
import 'package:dpge_assistido_app/utils/ui/my_colors.dart';
import 'package:flutter/material.dart';

class SolicitacaoPage extends StatefulWidget {
  final Solicitacao solicitacao;

  const SolicitacaoPage({Key? key, required this.solicitacao})
      : super(key: key);

  @override
  State<SolicitacaoPage> createState() => _SolicitacaoPageState();
}

class _SolicitacaoPageState extends State<SolicitacaoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Histórico do Pedido'),
      ),
      body: _body(),
    );
  }

  _body() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(
            child: SizedBox(
              height: 400,
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(
                          10,
                        ),
                      ),
                    ),
                    height: 40,
                    child: const Center(
                      child: Text(
                        'VEJA AQUI OS DETALHES DA SOLICITAÇÃO',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[300],
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Data da Solicitação:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              widget.solicitacao.dataInclusao!,
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Text(
                              'Tipo de Solicitação:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              widget.solicitacao.tipoSolicitacao!,
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Text(
                              'Modo de Atendimento:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              widget.solicitacao.tipoAtendimento!,
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Área:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(width: 5),
                            Flexible(
                              child: Text(
                                'MULHERES EM SITUAÇÃO DE VIOLÊNCIA DOMÉSTICA',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Text(
                              'Tipo de Atendimento:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              widget.solicitacao.atendimentoTerceiros!,
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: const [
                            Text(
                              'Representante:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'FERNANDO DE OLIVEIRA RODRIGUES',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: const [
                            Text(
                              'Representado(a):',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'ALAIN GABRIEL CÁCERES ÁLVAREZ',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: const [
                            Text(
                              'Parentesco do(a) Representado(a):',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'OUTROS(A)',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Descrição do caso:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Flexible(
                              child: Text(
                                widget.solicitacao.descricaoSolicitacao!,
                                style: const TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Card(
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("19:38",
                                      style: MyText.body2(context)!.copyWith(
                                          color: MyColors.grey_90,
                                          fontWeight: FontWeight.bold)),
                                  Text("21/06/2023",
                                      style: MyText.caption(context)!
                                          .copyWith(color: MyColors.grey_40)),
                                  Spacer(),
                                  Text("19:38",
                                      style: MyText.body2(context)!.copyWith(
                                          color: MyColors.grey_90,
                                          fontWeight: FontWeight.bold)),
                                  Text("21/06/2023",
                                      style: MyText.caption(context)!
                                          .copyWith(color: MyColors.grey_40)),
                                ],
                              ),
                              Container(width: 20),
                              Column(
                                children: <Widget>[
                                  Container(height: 5),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: MyColors.accent, width: 2),
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                  ),
                                  Expanded(
                                    child: Container(
                                        width: 2, color: MyColors.accent),
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    decoration: const BoxDecoration(
                                        color: MyColors.accent,
                                        shape: BoxShape.circle),
                                  ),
                                  Container(height: 5),
                                ],
                              ),
                              Container(width: 20),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("SOLICITADO",
                                        style: MyText.body2(context)!.copyWith(
                                            color: MyColors.grey_90,
                                            fontWeight: FontWeight.bold)),
                                    Text(
                                        "Em até 10 dias úteis após o registro de sua solicitação a Defensoria Pública confirmará o recebimento.",
                                        style: MyText.caption(context)!
                                            .copyWith(color: MyColors.grey_80)),
                                    Spacer(),
                                    Text("CANCELADO",
                                        style: MyText.body2(context)!.copyWith(
                                            color: MyColors.grey_90,
                                            fontWeight: FontWeight.bold)),
                                    Text(
                                        "Solicitação cancelada pelo assistido.",
                                        style: MyText.caption(context)!
                                            .copyWith(color: MyColors.grey_80)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
