import '/component/itemcardapio/itemcardapio_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cardapio_widget.dart' show CardapioWidget;
import 'package:flutter/material.dart';

class CardapioModel extends FlutterFlowModel<CardapioWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for itemcardapio dynamic component.
  late FlutterFlowDynamicModels<ItemcardapioModel> itemcardapioModels;

  @override
  void initState(BuildContext context) {
    itemcardapioModels = FlutterFlowDynamicModels(() => ItemcardapioModel());
  }

  @override
  void dispose() {
    itemcardapioModels.dispose();
  }
}
