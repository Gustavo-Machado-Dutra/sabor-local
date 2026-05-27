import '/component/tablettelainicial/tablettelainicial_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'tela_de_abertura_widget.dart' show TelaDeAberturaWidget;
import 'package:flutter/material.dart';

class TelaDeAberturaModel extends FlutterFlowModel<TelaDeAberturaWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for tablettelainicial component.
  late TablettelainicialModel tablettelainicialModel;

  @override
  void initState(BuildContext context) {
    tablettelainicialModel =
        createModel(context, () => TablettelainicialModel());
  }

  @override
  void dispose() {
    tablettelainicialModel.dispose();
  }
}
