import '/component/enderecotablet/enderecotablet_widget.dart';
import '/component/volta/volta_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'endereco_tablet_model.dart';
export 'endereco_tablet_model.dart';

class EnderecoTabletWidget extends StatefulWidget {
  const EnderecoTabletWidget({super.key});

  static String routeName = 'EnderecoTablet';
  static String routePath = '/enderecoTablet';

  @override
  State<EnderecoTabletWidget> createState() => _EnderecoTabletWidgetState();
}

class _EnderecoTabletWidgetState extends State<EnderecoTabletWidget> {
  late EnderecoTabletModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EnderecoTabletModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFFFF1E9),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-1.0, -1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                  child: wrapWithModel(
                    model: _model.voltaModel,
                    updateCallback: () => safeSetState(() {}),
                    child: VoltaWidget(),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: wrapWithModel(
                  model: _model.enderecotabletModel,
                  updateCallback: () => safeSetState(() {}),
                  child: EnderecotabletWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
