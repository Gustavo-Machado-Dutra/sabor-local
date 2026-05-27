import '/component/quantidade/quantidade_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'itemcardapio_widget.dart' show ItemcardapioWidget;
import 'package:flutter/material.dart';

class ItemcardapioModel extends FlutterFlowModel<ItemcardapioWidget> {
  ///  Local state fields for this component.

  int qtdselecionadabotao = 0;

  ///  State fields for stateful widgets in this component.

  // Model for quantidade component.
  late QuantidadeModel quantidadeModel;

  @override
  void initState(BuildContext context) {
    quantidadeModel = createModel(context, () => QuantidadeModel());
  }

  @override
  void dispose() {
    quantidadeModel.dispose();
  }
}
