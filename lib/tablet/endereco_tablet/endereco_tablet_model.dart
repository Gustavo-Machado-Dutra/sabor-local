import '/component/enderecotablet/enderecotablet_widget.dart';
import '/component/volta/volta_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'endereco_tablet_widget.dart' show EnderecoTabletWidget;
import 'package:flutter/material.dart';

class EnderecoTabletModel extends FlutterFlowModel<EnderecoTabletWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for volta component.
  late VoltaModel voltaModel;
  // Model for enderecotablet component.
  late EnderecotabletModel enderecotabletModel;

  @override
  void initState(BuildContext context) {
    voltaModel = createModel(context, () => VoltaModel());
    enderecotabletModel = createModel(context, () => EnderecotabletModel());
  }

  @override
  void dispose() {
    voltaModel.dispose();
    enderecotabletModel.dispose();
  }
}
