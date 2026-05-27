import '/component/namecpftablet/namecpftablet_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'name_cpf_tablet_widget.dart' show NameCpfTabletWidget;
import 'package:flutter/material.dart';

class NameCpfTabletModel extends FlutterFlowModel<NameCpfTabletWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for namecpftablet component.
  late NamecpftabletModel namecpftabletModel;

  @override
  void initState(BuildContext context) {
    namecpftabletModel = createModel(context, () => NamecpftabletModel());
  }

  @override
  void dispose() {
    namecpftabletModel.dispose();
  }
}
