import '/backend/api_requests/api_calls.dart';
import '/component/codverificacaotablet/codverificacaotablet_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'cod_verificacaotablet_model.dart';
export 'cod_verificacaotablet_model.dart';

class CodVerificacaotabletWidget extends StatefulWidget {
  const CodVerificacaotabletWidget({super.key});

  static String routeName = 'CodVerificacaotablet';
  static String routePath = '/codVerificacaotablet';

  @override
  State<CodVerificacaotabletWidget> createState() =>
      _CodVerificacaotabletWidgetState();
}

class _CodVerificacaotabletWidgetState
    extends State<CodVerificacaotabletWidget> {
  late CodVerificacaotabletModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CodVerificacaotabletModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(
        Duration(
          milliseconds: 1000,
        ),
      );
      _model.apiResultmq8 = await EnviarEmailCall.call(
        email: FFAppState().email,
      );

      if ((_model.apiResultmq8?.succeeded ?? true)) {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('código enviado'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
      } else {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('ERRO'),
              content: Text('Cógio não enviado'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFFFF1E9),
            ),
            child: wrapWithModel(
              model: _model.codverificacaotabletModel,
              updateCallback: () => safeSetState(() {}),
              child: CodverificacaotabletWidget(),
            ),
          ),
        ),
      ),
    );
  }
}
