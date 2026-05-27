import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'volta_model.dart';
export 'volta_model.dart';

class VoltaWidget extends StatefulWidget {
  const VoltaWidget({super.key});

  @override
  State<VoltaWidget> createState() => _VoltaWidgetState();
}

class _VoltaWidgetState extends State<VoltaWidget> {
  late VoltaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VoltaModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
          child: FlutterFlowIconButton(
            borderRadius: 200.0,
            buttonSize: 40.0,
            fillColor: Color(0xFFD9D9D9),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 24.0,
            ),
            onPressed: () async {
              context.pushNamed(TelaDeAberturaWidget.routeName);
            },
          ),
        ),
      ],
    );
  }
}
