// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/app_state.dart';
import '/auth/custom_auth/auth_util.dart';

Future<bool> logoutSaborLocal() async {
  try {
    FFAppState().update(() {
      FFAppState().id_usuario = 0;
      FFAppState().email = '';
      FFAppState().name = '';
      FFAppState().CPF = '';
      FFAppState().telefone = '';
      FFAppState().senha = '';
      FFAppState().cofirmarsenha = '';
      FFAppState().id_pedido_atual = 0;
      FFAppState().id_pagamento_asaas = '';
      FFAppState().forma_pagamento = '';
      FFAppState().status_pagamento = '';
      FFAppState().invoiceUrl = '';
      FFAppState().bankSlipUrl = '';
      FFAppState().pixQrCode = '';
      FFAppState().pixCopyPaste = '';
      FFAppState().valor_pagamento = 0.0;
      FFAppState().vencimento_pagamento = '';
    });
    await authManager.signOut();
    return true;
  } catch (_) {
    return false;
  }
}
