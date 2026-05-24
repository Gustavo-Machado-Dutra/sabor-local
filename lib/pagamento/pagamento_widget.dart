import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
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
        backgroundColor: Color(0xFFF9F1ED),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Pagamento',
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          font: GoogleFonts.interTight(
                            fontWeight: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .fontStyle,
                          ),
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
                    'Escolha como deseja pagar. O link do Asaas abre logo depois.',
                    maxLines: 2,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
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
                                  color: FlutterFlowTheme.of(context).primary,
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
                            'Pedido criado no carrinho',
                            style:
                                FlutterFlowTheme.of(context).bodySmall.override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                          ),
                        ].divide(SizedBox(height: 8.0)),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 14.0, 0.0, 14.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        if (FFAppState().id_pedido_atual == 0) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Finalize o pedido no carrinho antes de pagar.',
                                style: TextStyle(),
                              ),
                              duration: Duration(milliseconds: 4000),
                            ),
                          );
                        } else {
                          _model.pagamentopixCorrigido =
                              await CheckoutXanoFluxoCorrigidoGroup
                                  .criarPagamentoAsaasFluxoCorrigidoXanoCall
                                  .call(
                            formaPagamento: 'PIX',
                            idUsuario: FFAppState().id_usuario,
                            idPedido: FFAppState().id_pedido_atual,
                            nome: FFAppState().name,
                            email: FFAppState().email,
                            cpfCnpj: FFAppState().CPF,
                            telefone: FFAppState().telefone,
                            valorTotal: FFAppState().valor_pagamento,
                          );

                          if ((_model.pagamentopixCorrigido?.succeeded ??
                              true)) {
                            FFAppState().forma_pagamento = 'PIX';
                            safeSetState(() {});
                            FFAppState().id_pagamento_asaas =
                                PagamentoAsaasResponseStruct.maybeFromMap(
                                        (_model.pagamentopixCorrigido
                                                ?.jsonBody ??
                                            ''))!
                                    .idPagamentoAsaas;
                            safeSetState(() {});
                            FFAppState().status_pagamento =
                                PagamentoAsaasResponseStruct.maybeFromMap(
                                        (_model.pagamentopixCorrigido
                                                ?.jsonBody ??
                                            ''))!
                                    .status;
                            safeSetState(() {});
                            FFAppState().invoiceUrl =
                                PagamentoAsaasResponseStruct.maybeFromMap(
                                        (_model.pagamentopixCorrigido
                                                ?.jsonBody ??
                                            ''))!
                                    .invoiceUrl;
                            safeSetState(() {});
                            FFAppState().bankSlipUrl =
                                PagamentoAsaasResponseStruct.maybeFromMap(
                                        (_model.pagamentopixCorrigido
                                                ?.jsonBody ??
                                            ''))!
                                    .bankSlipUrl;
                            safeSetState(() {});
                            FFAppState().pixQrCode =
                                PagamentoAsaasResponseStruct.maybeFromMap(
                                        (_model.pagamentopixCorrigido
                                                ?.jsonBody ??
                                            ''))!
                                    .pixQrCode;
                            safeSetState(() {});
                            FFAppState().pixCopyPaste =
                                PagamentoAsaasResponseStruct.maybeFromMap(
                                        (_model.pagamentopixCorrigido
                                                ?.jsonBody ??
                                            ''))!
                                    .pixCopyPaste;
                            safeSetState(() {});
                            FFAppState().vencimento_pagamento =
                                PagamentoAsaasResponseStruct.maybeFromMap(
                                        (_model.pagamentopixCorrigido
                                                ?.jsonBody ??
                                            ''))!
                                    .vencimento;
                            safeSetState(() {});
                            if (PagamentoAsaasResponseStruct.maybeFromMap(
                                        (_model.pagamentopixCorrigido
                                                ?.jsonBody ??
                                            ''))
                                    ?.invoiceUrl ==
                                '') {
                              context
                                  .pushNamed(PagamentoPendenteWidget.routeName);
                            } else {
                              await launchURL(
                                  PagamentoAsaasResponseStruct.maybeFromMap(
                                          (_model.pagamentopixCorrigido
                                                  ?.jsonBody ??
                                              ''))!
                                      .invoiceUrl);

                              context
                                  .pushNamed(PagamentoPendenteWidget.routeName);
                            }
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Nao foi possivel iniciar o pagamento no Asaas.',
                                  style: TextStyle(),
                                ),
                                duration: Duration(milliseconds: 4000),
                              ),
                            );
                          }
                        }

                        safeSetState(() {});
                      },
                      text: 'Pagar com Pix',
                      icon: Icon(
                        Icons.qr_code_2,
                        size: 20.0,
                      ),
                      options: FFButtonOptions(
                        width: double.infinity,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconColor: FlutterFlowTheme.of(context).info,
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle: TextStyle(
                          color: FlutterFlowTheme.of(context).info,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 14.0, 0.0, 14.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        if (FFAppState().id_pedido_atual == 0) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Finalize o pedido no carrinho antes de pagar.',
                                style: TextStyle(),
                              ),
                              duration: Duration(milliseconds: 4000),
                            ),
                          );
                        } else {
                          _model.pagamentoboletoCorrigido =
                              await CheckoutXanoFluxoCorrigidoGroup
                                  .criarPagamentoAsaasFluxoCorrigidoXanoCall
                                  .call(
                            formaPagamento: 'BOLETO',
                            idUsuario: FFAppState().id_usuario,
                            idPedido: FFAppState().id_pedido_atual,
                            nome: FFAppState().name,
                            email: FFAppState().email,
                            cpfCnpj: FFAppState().CPF,
                            telefone: FFAppState().telefone,
                            valorTotal: FFAppState().valor_pagamento,
                          );

                          if ((_model.pagamentoboletoCorrigido?.succeeded ??
                              true)) {
                            FFAppState().forma_pagamento = 'BOLETO';
                            safeSetState(() {});
                            FFAppState().id_pagamento_asaas =
                                PagamentoAsaasResponseStruct.maybeFromMap(
                                        (_model.pagamentoboletoCorrigido
                                                ?.jsonBody ??
                                            ''))!
                                    .idPagamentoAsaas;
                            safeSetState(() {});
                            FFAppState().status_pagamento =
                                PagamentoAsaasResponseStruct.maybeFromMap(
                                        (_model.pagamentoboletoCorrigido
                                                ?.jsonBody ??
                                            ''))!
                                    .status;
                            safeSetState(() {});
                            FFAppState().invoiceUrl =
                                PagamentoAsaasResponseStruct.maybeFromMap(
                                        (_model.pagamentoboletoCorrigido
                                                ?.jsonBody ??
                                            ''))!
                                    .invoiceUrl;
                            safeSetState(() {});
                            FFAppState().bankSlipUrl =
                                PagamentoAsaasResponseStruct.maybeFromMap(
                                        (_model.pagamentoboletoCorrigido
                                                ?.jsonBody ??
                                            ''))!
                                    .bankSlipUrl;
                            safeSetState(() {});
                            FFAppState().pixQrCode =
                                PagamentoAsaasResponseStruct.maybeFromMap(
                                        (_model.pagamentoboletoCorrigido
                                                ?.jsonBody ??
                                            ''))!
                                    .pixQrCode;
                            safeSetState(() {});
                            FFAppState().pixCopyPaste =
                                PagamentoAsaasResponseStruct.maybeFromMap(
                                        (_model.pagamentoboletoCorrigido
                                                ?.jsonBody ??
                                            ''))!
                                    .pixCopyPaste;
                            safeSetState(() {});
                            FFAppState().vencimento_pagamento =
                                PagamentoAsaasResponseStruct.maybeFromMap(
                                        (_model.pagamentoboletoCorrigido
                                                ?.jsonBody ??
                                            ''))!
                                    .vencimento;
                            safeSetState(() {});
                            if (PagamentoAsaasResponseStruct.maybeFromMap(
                                        (_model.pagamentoboletoCorrigido
                                                ?.jsonBody ??
                                            ''))
                                    ?.invoiceUrl ==
                                '') {
                              context
                                  .pushNamed(PagamentoPendenteWidget.routeName);
                            } else {
                              await launchURL(
                                  PagamentoAsaasResponseStruct.maybeFromMap(
                                          (_model.pagamentoboletoCorrigido
                                                  ?.jsonBody ??
                                              ''))!
                                      .invoiceUrl);

                              context
                                  .pushNamed(PagamentoPendenteWidget.routeName);
                            }
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Nao foi possivel iniciar o pagamento no Asaas.',
                                  style: TextStyle(),
                                ),
                                duration: Duration(milliseconds: 4000),
                              ),
                            );
                          }
                        }

                        safeSetState(() {});
                      },
                      text: 'Pagar com Boleto',
                      icon: Icon(
                        Icons.receipt_long,
                        size: 20.0,
                      ),
                      options: FFButtonOptions(
                        width: double.infinity,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconColor: FlutterFlowTheme.of(context).info,
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle: TextStyle(
                          color: FlutterFlowTheme.of(context).info,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 14.0, 0.0, 14.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        if (FFAppState().id_pedido_atual == 0) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Finalize o pedido no carrinho antes de pagar.',
                                style: TextStyle(),
                              ),
                              duration: Duration(milliseconds: 4000),
                            ),
                          );
                        } else {
                          _model.pagamentocreditcardCorrigido =
                              await CheckoutXanoFluxoCorrigidoGroup
                                  .criarPagamentoAsaasFluxoCorrigidoXanoCall
                                  .call(
                            formaPagamento: 'CREDIT_CARD',
                            idUsuario: FFAppState().id_usuario,
                            idPedido: FFAppState().id_pedido_atual,
                            nome: FFAppState().name,
                            email: FFAppState().email,
                            cpfCnpj: FFAppState().CPF,
                            telefone: FFAppState().telefone,
                            valorTotal: FFAppState().valor_pagamento,
                          );

                          if ((_model.pagamentocreditcardCorrigido?.succeeded ??
                              true)) {
                            FFAppState().forma_pagamento = 'CREDIT_CARD';
                            safeSetState(() {});
                            FFAppState().id_pagamento_asaas =
                                PagamentoAsaasResponseStruct.maybeFromMap(
                                        (_model.pagamentocreditcardCorrigido
                                                ?.jsonBody ??
                                            ''))!
                                    .idPagamentoAsaas;
                            safeSetState(() {});
                            FFAppState().status_pagamento =
                                PagamentoAsaasResponseStruct.maybeFromMap(
                                        (_model.pagamentocreditcardCorrigido
                                                ?.jsonBody ??
                                            ''))!
                                    .status;
                            safeSetState(() {});
                            FFAppState().invoiceUrl =
                                PagamentoAsaasResponseStruct.maybeFromMap(
                                        (_model.pagamentocreditcardCorrigido
                                                ?.jsonBody ??
                                            ''))!
                                    .invoiceUrl;
                            safeSetState(() {});
                            FFAppState().bankSlipUrl =
                                PagamentoAsaasResponseStruct.maybeFromMap(
                                        (_model.pagamentocreditcardCorrigido
                                                ?.jsonBody ??
                                            ''))!
                                    .bankSlipUrl;
                            safeSetState(() {});
                            FFAppState().pixQrCode =
                                PagamentoAsaasResponseStruct.maybeFromMap(
                                        (_model.pagamentocreditcardCorrigido
                                                ?.jsonBody ??
                                            ''))!
                                    .pixQrCode;
                            safeSetState(() {});
                            FFAppState().pixCopyPaste =
                                PagamentoAsaasResponseStruct.maybeFromMap(
                                        (_model.pagamentocreditcardCorrigido
                                                ?.jsonBody ??
                                            ''))!
                                    .pixCopyPaste;
                            safeSetState(() {});
                            FFAppState().vencimento_pagamento =
                                PagamentoAsaasResponseStruct.maybeFromMap(
                                        (_model.pagamentocreditcardCorrigido
                                                ?.jsonBody ??
                                            ''))!
                                    .vencimento;
                            safeSetState(() {});
                            if (PagamentoAsaasResponseStruct.maybeFromMap(
                                        (_model.pagamentocreditcardCorrigido
                                                ?.jsonBody ??
                                            ''))
                                    ?.invoiceUrl ==
                                '') {
                              context
                                  .pushNamed(PagamentoPendenteWidget.routeName);
                            } else {
                              await launchURL(
                                  PagamentoAsaasResponseStruct.maybeFromMap(
                                          (_model.pagamentocreditcardCorrigido
                                                  ?.jsonBody ??
                                              ''))!
                                      .invoiceUrl);

                              context
                                  .pushNamed(PagamentoPendenteWidget.routeName);
                            }
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Nao foi possivel iniciar o pagamento no Asaas.',
                                  style: TextStyle(),
                                ),
                                duration: Duration(milliseconds: 4000),
                              ),
                            );
                          }
                        }

                        safeSetState(() {});
                      },
                      text: 'Pagar com Cartao',
                      icon: Icon(
                        Icons.credit_card,
                        size: 20.0,
                      ),
                      options: FFButtonOptions(
                        width: double.infinity,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconColor: FlutterFlowTheme.of(context).info,
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle: TextStyle(
                          color: FlutterFlowTheme.of(context).info,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
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
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconColor: FlutterFlowTheme.of(context).primary,
                      color: Colors.transparent,
                      textStyle: TextStyle(
                        color: FlutterFlowTheme.of(context).primary,
                      ),
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ].divide(SizedBox(height: 14.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
