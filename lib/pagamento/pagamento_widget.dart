import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pagamento_model.dart';
export 'pagamento_model.dart';

class PagamentoWidget extends StatefulWidget {
  const PagamentoWidget({super.key});

  static String routeName = 'pagamento';
  static String routePath = '/pagamento';

  @override
  State<PagamentoWidget> createState() => _PagamentoWidgetState();
}

class _PagamentoWidgetState extends State<PagamentoWidget> {
  late PagamentoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PagamentoModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFFFEBE0),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 50.0, 20.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Finalize seu pagamento',
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          font: GoogleFonts.interTight(
                            fontWeight: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .fontStyle,
                          ),
                          color: Color(0xFF0F172A),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .fontStyle,
                        ),
                  ),
                  Text(
                    'Escolha uma opcao segura para concluir o pedido. A confirmacao sera atualizada automaticamente apos o pagamento.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: Color(0xFF64748B),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                  Material(
                    color: Colors.transparent,
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total do pedido',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF64748B),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                            ),
                            Text(
                              functions.formatarPrecoCarrinho(
                                  FFAppState().valor_pagamento)!,
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF0F172A),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                  ),
                            ),
                            Text(
                              'Pedido reservado enquanto aguardamos a confirmacao.',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF64748B),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontStyle,
                                  ),
                            ),
                          ].divide(SizedBox(height: 10.0)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 14.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        _model.pagamentoPixCriadoUsuarioSincronizado =
                            await actions.sincronizarUsuarioLogadoXano();
                        if (_model.pagamentoPixCriadoUsuarioSincronizado ==
                            true) {
                          if (FFAppState().id_pedido_atual == 0) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Finalize o pedido no carrinho antes de escolher o pagamento.',
                                  style: TextStyle(),
                                ),
                                duration: Duration(milliseconds: 4000),
                              ),
                            );
                          } else {
                            if (functions.dadosPagamentoValidos(
                                FFAppState().id_usuario,
                                FFAppState().id_pedido_atual,
                                FFAppState().valor_pagamento)!) {
                              FFAppState().forma_pagamento = 'PIX';
                              safeSetState(() {});
                              FFAppState().status_pagamento =
                                  'Aguardando pagamento';
                              safeSetState(() {});
                              _model.pagamentoPixCriado =
                                  await CheckoutXanoGroup
                                      .criarPagamentoAsaasXanoCall
                                      .call(
                                bearerAuth: FFAppState().authTokenXano,
                                formaPagamento: 'PIX',
                                idUsuario: FFAppState().id_usuario,
                                idPedido: FFAppState().id_pedido_atual,
                                nome: FFAppState().name,
                                email: FFAppState().email,
                                cpfCnpj: FFAppState().CPF,
                                telefone: FFAppState().telefone,
                                valorTotal: FFAppState().valor_pagamento,
                              );

                              if ((_model.pagamentoPixCriado?.succeeded ??
                                  true)) {
                                if (PagamentoAsaasResponseStruct.maybeFromMap(
                                            (_model.pagamentoPixCriado
                                                    ?.jsonBody ??
                                                ''))
                                        ?.success ==
                                    true) {
                                  FFAppState().id_pagamento_asaas =
                                      PagamentoAsaasResponseStruct.maybeFromMap(
                                              (_model.pagamentoPixCriado
                                                      ?.jsonBody ??
                                                  ''))!
                                          .idPagamentoAsaas;
                                  safeSetState(() {});
                                  FFAppState().status_pagamento =
                                      'Aguardando pagamento';
                                  safeSetState(() {});
                                  FFAppState().invoiceUrl =
                                      PagamentoAsaasResponseStruct.maybeFromMap(
                                              (_model.pagamentoPixCriado
                                                      ?.jsonBody ??
                                                  ''))!
                                          .invoiceUrl;
                                  safeSetState(() {});
                                  FFAppState().bankSlipUrl =
                                      PagamentoAsaasResponseStruct.maybeFromMap(
                                              (_model.pagamentoPixCriado
                                                      ?.jsonBody ??
                                                  ''))!
                                          .bankSlipUrl;
                                  safeSetState(() {});
                                  FFAppState().pixQrCode =
                                      PagamentoAsaasResponseStruct.maybeFromMap(
                                              (_model.pagamentoPixCriado
                                                      ?.jsonBody ??
                                                  ''))!
                                          .pixQrCode;
                                  safeSetState(() {});
                                  FFAppState().pixCopyPaste =
                                      PagamentoAsaasResponseStruct.maybeFromMap(
                                              (_model.pagamentoPixCriado
                                                      ?.jsonBody ??
                                                  ''))!
                                          .pixCopyPaste;
                                  safeSetState(() {});
                                  FFAppState().valor_pagamento =
                                      PagamentoAsaasResponseStruct.maybeFromMap(
                                              (_model.pagamentoPixCriado
                                                      ?.jsonBody ??
                                                  ''))!
                                          .valor;
                                  safeSetState(() {});
                                  FFAppState().vencimento_pagamento =
                                      PagamentoAsaasResponseStruct.maybeFromMap(
                                              (_model.pagamentoPixCriado
                                                      ?.jsonBody ??
                                                  ''))!
                                          .vencimento;
                                  safeSetState(() {});

                                  context.pushNamed(
                                      PagamentoPendenteWidget.routeName);
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Nao foi possivel carregar o pagamento. Verifique seus dados e tente novamente.',
                                        style: TextStyle(),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                    ),
                                  );
                                }
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Nao foi possivel carregar o pagamento. Verifique seus dados e tente novamente.',
                                      style: TextStyle(),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                  ),
                                );
                              }
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Nao foi possivel iniciar o pagamento. Faca login novamente ou tente refazer o pedido.',
                                    style: TextStyle(),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                ),
                              );
                            }
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Nao foi possivel iniciar o pagamento. Faca login novamente ou tente refazer o pedido.',
                                style: TextStyle(),
                              ),
                              duration: Duration(milliseconds: 4000),
                            ),
                          );
                        }

                        safeSetState(() {});
                      },
                      text: 'Pix',
                      icon: Icon(
                        Icons.qr_code,
                        size: 20.0,
                      ),
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 56.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconColor: Colors.white,
                        color: Color(0xFFDF7D54),
                        textStyle: TextStyle(
                          color: Colors.white,
                        ),
                        elevation: 10.0,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        _model.pagamentoBoletoCriadoUsuarioSincronizado =
                            await actions.sincronizarUsuarioLogadoXano();
                        if (_model.pagamentoBoletoCriadoUsuarioSincronizado ==
                            true) {
                          if (FFAppState().id_pedido_atual == 0) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Finalize o pedido no carrinho antes de escolher o pagamento.',
                                  style: TextStyle(),
                                ),
                                duration: Duration(milliseconds: 4000),
                              ),
                            );
                          } else {
                            if (functions.dadosPagamentoValidos(
                                FFAppState().id_usuario,
                                FFAppState().id_pedido_atual,
                                FFAppState().valor_pagamento)!) {
                              FFAppState().forma_pagamento = 'BOLETO';
                              safeSetState(() {});
                              FFAppState().status_pagamento =
                                  'Aguardando pagamento';
                              safeSetState(() {});
                              _model.pagamentoBoletoCriado =
                                  await CheckoutXanoGroup
                                      .criarPagamentoAsaasXanoCall
                                      .call(
                                bearerAuth: FFAppState().authTokenXano,
                                formaPagamento: 'BOLETO',
                                idUsuario: FFAppState().id_usuario,
                                idPedido: FFAppState().id_pedido_atual,
                                nome: FFAppState().name,
                                email: FFAppState().email,
                                cpfCnpj: FFAppState().CPF,
                                telefone: FFAppState().telefone,
                                valorTotal: FFAppState().valor_pagamento,
                              );

                              if ((_model.pagamentoBoletoCriado?.succeeded ??
                                  true)) {
                                if (PagamentoAsaasResponseStruct.maybeFromMap(
                                            (_model.pagamentoBoletoCriado
                                                    ?.jsonBody ??
                                                ''))
                                        ?.success ==
                                    true) {
                                  FFAppState().id_pagamento_asaas =
                                      PagamentoAsaasResponseStruct.maybeFromMap(
                                              (_model.pagamentoBoletoCriado
                                                      ?.jsonBody ??
                                                  ''))!
                                          .idPagamentoAsaas;
                                  safeSetState(() {});
                                  FFAppState().status_pagamento =
                                      'Aguardando pagamento';
                                  safeSetState(() {});
                                  FFAppState().invoiceUrl =
                                      PagamentoAsaasResponseStruct.maybeFromMap(
                                              (_model.pagamentoBoletoCriado
                                                      ?.jsonBody ??
                                                  ''))!
                                          .invoiceUrl;
                                  safeSetState(() {});
                                  FFAppState().bankSlipUrl =
                                      PagamentoAsaasResponseStruct.maybeFromMap(
                                              (_model.pagamentoBoletoCriado
                                                      ?.jsonBody ??
                                                  ''))!
                                          .bankSlipUrl;
                                  safeSetState(() {});
                                  FFAppState().pixQrCode =
                                      PagamentoAsaasResponseStruct.maybeFromMap(
                                              (_model.pagamentoBoletoCriado
                                                      ?.jsonBody ??
                                                  ''))!
                                          .pixQrCode;
                                  safeSetState(() {});
                                  FFAppState().pixCopyPaste =
                                      PagamentoAsaasResponseStruct.maybeFromMap(
                                              (_model.pagamentoBoletoCriado
                                                      ?.jsonBody ??
                                                  ''))!
                                          .pixCopyPaste;
                                  safeSetState(() {});
                                  FFAppState().valor_pagamento =
                                      PagamentoAsaasResponseStruct.maybeFromMap(
                                              (_model.pagamentoBoletoCriado
                                                      ?.jsonBody ??
                                                  ''))!
                                          .valor;
                                  safeSetState(() {});
                                  FFAppState().vencimento_pagamento =
                                      PagamentoAsaasResponseStruct.maybeFromMap(
                                              (_model.pagamentoBoletoCriado
                                                      ?.jsonBody ??
                                                  ''))!
                                          .vencimento;
                                  safeSetState(() {});

                                  context.pushNamed(
                                      PagamentoPendenteWidget.routeName);
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Nao foi possivel carregar o pagamento. Verifique seus dados e tente novamente.',
                                        style: TextStyle(),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                    ),
                                  );
                                }
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Nao foi possivel carregar o pagamento. Verifique seus dados e tente novamente.',
                                      style: TextStyle(),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                  ),
                                );
                              }
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Nao foi possivel iniciar o pagamento. Faca login novamente ou tente refazer o pedido.',
                                    style: TextStyle(),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                ),
                              );
                            }
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Nao foi possivel iniciar o pagamento. Faca login novamente ou tente refazer o pedido.',
                                style: TextStyle(),
                              ),
                              duration: Duration(milliseconds: 4000),
                            ),
                          );
                        }

                        safeSetState(() {});
                      },
                      text: 'Boleto bancario',
                      icon: Icon(
                        Icons.receipt_long,
                        size: 20.0,
                      ),
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 56.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconColor: Colors.white,
                        color: Color(0xFF2563EB),
                        textStyle: TextStyle(
                          color: Colors.white,
                        ),
                        elevation: 10.0,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        _model.pagamentoCartaoCriadoUsuarioSincronizado =
                            await actions.sincronizarUsuarioLogadoXano();
                        if (_model.pagamentoCartaoCriadoUsuarioSincronizado ==
                            true) {
                          if (FFAppState().id_pedido_atual == 0) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Finalize o pedido no carrinho antes de escolher o pagamento.',
                                  style: TextStyle(),
                                ),
                                duration: Duration(milliseconds: 4000),
                              ),
                            );
                          } else {
                            if (functions.dadosPagamentoValidos(
                                FFAppState().id_usuario,
                                FFAppState().id_pedido_atual,
                                FFAppState().valor_pagamento)!) {
                              FFAppState().forma_pagamento = 'CREDIT_CARD';
                              safeSetState(() {});
                              FFAppState().status_pagamento =
                                  'Aguardando pagamento';
                              safeSetState(() {});
                              _model.pagamentoCartaoCriado =
                                  await CheckoutXanoGroup
                                      .criarPagamentoAsaasXanoCall
                                      .call(
                                bearerAuth: FFAppState().authTokenXano,
                                formaPagamento: 'CREDIT_CARD',
                                idUsuario: FFAppState().id_usuario,
                                idPedido: FFAppState().id_pedido_atual,
                                nome: FFAppState().name,
                                email: FFAppState().email,
                                cpfCnpj: FFAppState().CPF,
                                telefone: FFAppState().telefone,
                                valorTotal: FFAppState().valor_pagamento,
                              );

                              if ((_model.pagamentoCartaoCriado?.succeeded ??
                                  true)) {
                                if (PagamentoAsaasResponseStruct.maybeFromMap(
                                            (_model.pagamentoCartaoCriado
                                                    ?.jsonBody ??
                                                ''))
                                        ?.success ==
                                    true) {
                                  FFAppState().id_pagamento_asaas =
                                      PagamentoAsaasResponseStruct.maybeFromMap(
                                              (_model.pagamentoCartaoCriado
                                                      ?.jsonBody ??
                                                  ''))!
                                          .idPagamentoAsaas;
                                  safeSetState(() {});
                                  FFAppState().status_pagamento =
                                      'Aguardando pagamento';
                                  safeSetState(() {});
                                  FFAppState().invoiceUrl =
                                      PagamentoAsaasResponseStruct.maybeFromMap(
                                              (_model.pagamentoCartaoCriado
                                                      ?.jsonBody ??
                                                  ''))!
                                          .invoiceUrl;
                                  safeSetState(() {});
                                  FFAppState().bankSlipUrl =
                                      PagamentoAsaasResponseStruct.maybeFromMap(
                                              (_model.pagamentoCartaoCriado
                                                      ?.jsonBody ??
                                                  ''))!
                                          .bankSlipUrl;
                                  safeSetState(() {});
                                  FFAppState().pixQrCode =
                                      PagamentoAsaasResponseStruct.maybeFromMap(
                                              (_model.pagamentoCartaoCriado
                                                      ?.jsonBody ??
                                                  ''))!
                                          .pixQrCode;
                                  safeSetState(() {});
                                  FFAppState().pixCopyPaste =
                                      PagamentoAsaasResponseStruct.maybeFromMap(
                                              (_model.pagamentoCartaoCriado
                                                      ?.jsonBody ??
                                                  ''))!
                                          .pixCopyPaste;
                                  safeSetState(() {});
                                  FFAppState().valor_pagamento =
                                      PagamentoAsaasResponseStruct.maybeFromMap(
                                              (_model.pagamentoCartaoCriado
                                                      ?.jsonBody ??
                                                  ''))!
                                          .valor;
                                  safeSetState(() {});
                                  FFAppState().vencimento_pagamento =
                                      PagamentoAsaasResponseStruct.maybeFromMap(
                                              (_model.pagamentoCartaoCriado
                                                      ?.jsonBody ??
                                                  ''))!
                                          .vencimento;
                                  safeSetState(() {});
                                  if (!(PagamentoAsaasResponseStruct
                                              .maybeFromMap((_model
                                                      .pagamentoCartaoCriado
                                                      ?.jsonBody ??
                                                  ''))
                                          ?.invoiceUrl ==
                                      '')) {
                                    await launchURL(PagamentoAsaasResponseStruct
                                            .maybeFromMap((_model
                                                    .pagamentoCartaoCriado
                                                    ?.jsonBody ??
                                                ''))!
                                        .invoiceUrl);

                                    context.pushNamed(
                                        PagamentoPendenteWidget.routeName);
                                  }
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Nao foi possivel carregar o pagamento. Verifique seus dados e tente novamente.',
                                        style: TextStyle(),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                    ),
                                  );
                                }
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Nao foi possivel carregar o pagamento. Verifique seus dados e tente novamente.',
                                      style: TextStyle(),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                  ),
                                );
                              }
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Nao foi possivel iniciar o pagamento. Faca login novamente ou tente refazer o pedido.',
                                    style: TextStyle(),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                ),
                              );
                            }
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Nao foi possivel iniciar o pagamento. Faca login novamente ou tente refazer o pedido.',
                                style: TextStyle(),
                              ),
                              duration: Duration(milliseconds: 4000),
                            ),
                          );
                        }

                        safeSetState(() {});
                      },
                      text: 'Cartao de credito',
                      icon: Icon(
                        Icons.credit_card,
                        size: 20.0,
                      ),
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 56.0,
                        padding: EdgeInsets.all(0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconColor: Colors.white,
                        color: Color(0xFF111827),
                        textStyle: TextStyle(
                          color: Colors.white,
                        ),
                        elevation: 10.0,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed(CarrinhoWidget.routeName);
                    },
                    text: 'Voltar ao carrinho',
                    icon: Icon(
                      Icons.arrow_back,
                      size: 20.0,
                    ),
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 52.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconColor: FlutterFlowTheme.of(context).tertiary,
                      color: Color(0xFFF8FAFC),
                      textStyle: TextStyle(
                        color: FlutterFlowTheme.of(context).tertiary,
                      ),
                      elevation: 10.0,
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        width: 0.6,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ].divide(SizedBox(height: 20.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
