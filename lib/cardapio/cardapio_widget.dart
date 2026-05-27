import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/component/itemcardapio/itemcardapio_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cardapio_model.dart';
export 'cardapio_model.dart';

class CardapioWidget extends StatefulWidget {
  const CardapioWidget({super.key});

  static String routeName = 'cardapio';
  static String routePath = '/cardapio';

  @override
  State<CardapioWidget> createState() => _CardapioWidgetState();
}

class _CardapioWidgetState extends State<CardapioWidget> {
  late CardapioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardapioModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Cardapio ',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.interTight(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                FutureBuilder<ApiCallResponse>(
                  future: CatalogodigitalCall.call(),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }
                    final listViewCatalogodigitalResponse = snapshot.data!;

                    return Builder(
                      builder: (context) {
                        final itemcarrinho = getJsonField(
                          listViewCatalogodigitalResponse.jsonBody,
                          r'''$''',
                        ).toList();

                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: itemcarrinho.length,
                          itemBuilder: (context, itemcarrinhoIndex) {
                            final itemcarrinhoItem =
                                itemcarrinho[itemcarrinhoIndex];
                            return wrapWithModel(
                              model: _model.itemcardapioModels.getModel(
                                getJsonField(
                                  itemcarrinhoItem,
                                  r'''$.id''',
                                ).toString(),
                                itemcarrinhoIndex,
                              ),
                              updateCallback: () => safeSetState(() {}),
                              child: ItemcardapioWidget(
                                key: Key(
                                  'Keyevw_${getJsonField(
                                    itemcarrinhoItem,
                                    r'''$.id''',
                                  ).toString()}',
                                ),
                                produto: TipoprodutoStruct(
                                  idproduto: getJsonField(
                                    itemcarrinhoItem,
                                    r'''$.id''',
                                  ),
                                  nomeproduto: getJsonField(
                                    itemcarrinhoItem,
                                    r'''$.nome''',
                                  ).toString(),
                                  descricaoproduto: getJsonField(
                                    itemcarrinhoItem,
                                    r'''$.descricao''',
                                  ).toString(),
                                  quantidadeproduto: getJsonField(
                                    itemcarrinhoItem,
                                    r'''$.qtd_disponivel''',
                                  ),
                                  qntselecionnadaproduto: 0,
                                  urlimagemproduto: getJsonField(
                                    itemcarrinhoItem,
                                    r'''$.url_imagem''',
                                  ).toString(),
                                  precodoproduto: getJsonField(
                                    itemcarrinhoItem,
                                    r'''$.preco''',
                                  ),
                                  precisaproduzirproduto: getJsonField(
                                    itemcarrinhoItem,
                                    r'''$.precisa_produzir''',
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
