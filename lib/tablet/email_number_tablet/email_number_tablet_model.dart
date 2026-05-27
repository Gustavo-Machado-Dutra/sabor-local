import '/component/emailnumbertablet/emailnumbertablet_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'email_number_tablet_widget.dart' show EmailNumberTabletWidget;
import 'package:flutter/material.dart';

class EmailNumberTabletModel extends FlutterFlowModel<EmailNumberTabletWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for emailnumbertablet component.
  late EmailnumbertabletModel emailnumbertabletModel;

  @override
  void initState(BuildContext context) {
    emailnumbertabletModel =
        createModel(context, () => EmailnumbertabletModel());
  }

  @override
  void dispose() {
    emailnumbertabletModel.dispose();
  }
}
