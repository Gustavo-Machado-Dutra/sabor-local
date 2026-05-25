import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pagamento_pendente_model.dart';
export 'pagamento_pendente_model.dart';

/// Mostra os dados da cobranca enquanto aguarda confirmacao.
class PagamentoPendenteWidget extends StatefulWidget {
  const PagamentoPendenteWidget({super.key});

  static String routeName = 'PagamentoPendente';
  static String routePath = '/pagamento-pendente';

  @override
  State<PagamentoPendenteWidget> createState() =>
      _PagamentoPendenteWidgetState();
}

class _PagamentoPendenteWidgetState extends State<PagamentoPendenteWidget> {
  late PagamentoPendenteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PagamentoPendenteModel());
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
        backgroundColor: Color(0xFFF7E0D5),
        appBar: AppBar(
          backgroundColor: Color(0xFFF8D8CA),
          automaticallyImplyLeading: true,
          title: Text(
            'Pagamento',
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  font: GoogleFonts.interTight(
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleLarge.fontStyle,
                  ),
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 8.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFF4F0EE),
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
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
                              'Aguardando pagamento',
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF1F2937),
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
                              FFAppState().status_pagamento,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF6B7280),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
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
                                    color: Color(0xFF374151),
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
                              'Vencimento',
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
                                    color: Color(0xFF6B7280),
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
                              FFAppState().vencimento_pagamento,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF374151),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ].divide(SizedBox(height: 8.0)),
                        ),
                      ),
                    ),
                    if (FFAppState().forma_pagamento == 'PIX')
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
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
                                'Pagamento via Pix',
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF1F2937),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                              ),
                              Text(
                                'Voce pode pagar copiando o codigo Pix ou abrindo o pagamento no Asaas.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF374151),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              if (functions
                                      .pixQrCodeEhUrl(FFAppState().pixQrCode) ??
                                  true)
                                CachedNetworkImage(
                                  fadeInDuration: Duration(milliseconds: 0),
                                  fadeOutDuration: Duration(milliseconds: 0),
                                  imageUrl: FFAppState().pixQrCode,
                                  width: 180.0,
                                  height: 180.0,
                                  fit: BoxFit.contain,
                                ),
                              if (!(FFAppState().pixCopyPaste == ''))
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF9FAFB),
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                      color: Color(0xFFE5E7EB),
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: Text(
                                      FFAppState().pixCopyPaste,
                                      maxLines: 12,
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .fontStyle,
                                            ),
                                            color: Color(0xFF374151),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                              if (FFAppState().pixCopyPaste == '')
                                Text(
                                  'Codigo Pix nao disponivel. Abra o pagamento no Asaas.',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFF6B7280),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              if (!(FFAppState().invoiceUrl == ''))
                                FFButtonWidget(
                                  onPressed: () async {
                                    if (!(FFAppState().invoiceUrl == '')) {
                                      await launchURL(FFAppState().invoiceUrl);
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Link de pagamento ainda nao disponivel.',
                                            style: TextStyle(),
                                          ),
                                          duration:
                                              Duration(milliseconds: 4000),
                                        ),
                                      );
                                    }
                                  },
                                  text: 'Abrir pagamento no Asaas',
                                  icon: Icon(
                                    Icons.open_in_new,
                                    size: 20.0,
                                  ),
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconColor: Colors.white,
                                    color: Color(0xFFF56E0F),
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              if (!(FFAppState().pixCopyPaste == ''))
                                FFButtonWidget(
                                  onPressed: () async {
                                    await Clipboard.setData(ClipboardData(
                                        text: FFAppState().pixCopyPaste));
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Codigo Pix copiado.',
                                          style: TextStyle(),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                      ),
                                    );
                                  },
                                  text: 'Copiar codigo Pix',
                                  icon: Icon(
                                    Icons.copy,
                                    size: 20.0,
                                  ),
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconColor: Color(0xFFF56E0F),
                                    color: Colors.transparent,
                                    textStyle: TextStyle(
                                      color: Color(0xFFF56E0F),
                                    ),
                                    borderSide: BorderSide(
                                      color: Color(0xFFF56E0F),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                            ].divide(SizedBox(height: 12.0)),
                          ),
                        ),
                      ),
                    if (FFAppState().forma_pagamento == 'BOLETO')
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
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
                                'Boleto',
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF1F2937),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  if (!(FFAppState().bankSlipUrl == '')) {
                                    await launchURL(FFAppState().bankSlipUrl);
                                  } else {
                                    if (!(FFAppState().invoiceUrl == '')) {
                                      await launchURL(FFAppState().invoiceUrl);
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Boleto ainda nao disponivel.',
                                            style: TextStyle(),
                                          ),
                                          duration:
                                              Duration(milliseconds: 4000),
                                        ),
                                      );
                                    }
                                  }
                                },
                                text: 'Abrir boleto no Asaas',
                                icon: Icon(
                                  Icons.open_in_new,
                                  size: 20.0,
                                ),
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconColor: Colors.white,
                                  color: Color(0xFFF56E0F),
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              if (!(FFAppState().bankSlipUrl == ''))
                                FFButtonWidget(
                                  onPressed: () async {
                                    await Clipboard.setData(ClipboardData(
                                        text: FFAppState().bankSlipUrl));
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Link do boleto copiado.',
                                          style: TextStyle(),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                      ),
                                    );
                                  },
                                  text: 'Copiar link do boleto',
                                  icon: Icon(
                                    Icons.copy,
                                    size: 20.0,
                                  ),
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconColor: Color(0xFFF56E0F),
                                    color: Colors.transparent,
                                    textStyle: TextStyle(
                                      color: Color(0xFFF56E0F),
                                    ),
                                    borderSide: BorderSide(
                                      color: Color(0xFFF56E0F),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                            ].divide(SizedBox(height: 12.0)),
                          ),
                        ),
                      ),
                    if (FFAppState().forma_pagamento == 'CREDIT_CARD')
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
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
                                'Cartao',
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF1F2937),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                              ),
                              Text(
                                'Apos finalizar o pagamento, volte para o app e clique em \"Verificar pagamento\".',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF374151),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              if (!(FFAppState().invoiceUrl == ''))
                                FFButtonWidget(
                                  onPressed: () async {
                                    if (!(FFAppState().invoiceUrl == '')) {
                                      await launchURL(FFAppState().invoiceUrl);
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Link de pagamento ainda nao disponivel.',
                                            style: TextStyle(),
                                          ),
                                          duration:
                                              Duration(milliseconds: 4000),
                                        ),
                                      );
                                    }
                                  },
                                  text: 'Abrir pagamento no Asaas',
                                  icon: Icon(
                                    Icons.open_in_new,
                                    size: 20.0,
                                  ),
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconColor: Colors.white,
                                    color: Color(0xFFF56E0F),
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                            ].divide(SizedBox(height: 12.0)),
                          ),
                        ),
                      ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          18.0, 14.0, 18.0, 14.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (FFAppState().id_pagamento_asaas == '') {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Pagamento ainda nao foi iniciado.',
                                  style: TextStyle(),
                                ),
                                duration: Duration(milliseconds: 4000),
                              ),
                            );
                          } else {
                            _model.statusPagamentoConsultado =
                                await CheckoutXanoGroup
                                    .consultarStatusPagamentoXanoCall
                                    .call(
                              idPagamentoAsaas: FFAppState().id_pagamento_asaas,
                            );

                            if ((_model.statusPagamentoConsultado?.succeeded ??
                                true)) {
                              if (PagamentoStatusResponseStruct.maybeFromMap((_model.statusPagamentoConsultado?.jsonBody ?? ''))
                                      ?.status ==
                                  'CONFIRMED') {
                                FFAppState().status_pagamento =
                                    'Pagamento aprovado';
                                safeSetState(() {});

                                context.pushNamed(
                                    SucessoPagamentoWidget.routeName);
                              } else if (PagamentoStatusResponseStruct.maybeFromMap(
                                          (_model.statusPagamentoConsultado?.jsonBody ??
                                              ''))
                                      ?.status ==
                                  'RECEIVED') {
                                FFAppState().status_pagamento =
                                    'Pagamento aprovado';
                                safeSetState(() {});

                                context.pushNamed(
                                    SucessoPagamentoWidget.routeName);
                              } else if (PagamentoStatusResponseStruct.maybeFromMap(
                                          (_model.statusPagamentoConsultado?.jsonBody ??
                                              ''))
                                      ?.status ==
                                  'PENDING') {
                                FFAppState().status_pagamento =
                                    'Aguardando pagamento';
                                safeSetState(() {});
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Pagamento ainda nao identificado.',
                                      style: TextStyle(),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                  ),
                                );
                              } else if (PagamentoStatusResponseStruct.maybeFromMap(
                                          (_model.statusPagamentoConsultado?.jsonBody ??
                                              ''))
                                      ?.status ==
                                  'OVERDUE') {
                                FFAppState().status_pagamento =
                                    'Pagamento vencido';
                                safeSetState(() {});
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Pagamento vencido.',
                                      style: TextStyle(),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                  ),
                                );
                              } else if (PagamentoStatusResponseStruct.maybeFromMap(
                                          (_model.statusPagamentoConsultado?.jsonBody ?? ''))
                                      ?.status ==
                                  'CANCELLED') {
                                FFAppState().status_pagamento =
                                    'Pagamento cancelado';
                                safeSetState(() {});
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Pagamento cancelado.',
                                      style: TextStyle(),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                  ),
                                );
                              } else {
                                FFAppState().status_pagamento =
                                    PagamentoStatusResponseStruct.maybeFromMap(
                                            (_model.statusPagamentoConsultado
                                                    ?.jsonBody ??
                                                ''))!
                                        .statusTraduzido;
                                safeSetState(() {});
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Pagamento ainda nao identificado.',
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
                                    'Nao foi possivel consultar o pagamento agora.',
                                    style: TextStyle(),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                ),
                              );
                            }
                          }

                          safeSetState(() {});
                        },
                        text: 'Verificar pagamento',
                        icon: Icon(
                          Icons.refresh,
                          size: 20.0,
                        ),
                        options: FFButtonOptions(
                          width: double.infinity,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconColor: Colors.white,
                          color: Color(0xFFF56E0F),
                          textStyle: TextStyle(
                            color: Colors.white,
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
                        Icons.shopping_cart,
                        size: 20.0,
                      ),
                      options: FFButtonOptions(
                        width: double.infinity,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconColor: Color(0xFFF56E0F),
                        color: Colors.transparent,
                        textStyle: TextStyle(
                          color: Color(0xFFF56E0F),
                        ),
                        borderSide: BorderSide(
                          color: Color(0xFFF56E0F),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed(CatalogodigitalWidget.routeName);
                      },
                      text: 'Voltar ao inicio',
                      icon: Icon(
                        Icons.home,
                        size: 20.0,
                      ),
                      options: FFButtonOptions(
                        width: double.infinity,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconColor: Color(0xFFF56E0F),
                        color: Colors.transparent,
                        textStyle: TextStyle(
                          color: Color(0xFFF56E0F),
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
