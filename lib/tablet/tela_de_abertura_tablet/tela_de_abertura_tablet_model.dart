import '/component/tablettelainicial/tablettelainicial_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'tela_de_abertura_tablet_widget.dart' show TelaDeAberturaTabletWidget;
import 'package:flutter/material.dart';

class TelaDeAberturaTabletModel
    extends FlutterFlowModel<TelaDeAberturaTabletWidget> {
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
