import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'catalogodigital_tablet_widget.dart' show CatalogodigitalTabletWidget;
import 'package:flutter/material.dart';

class CatalogodigitalTabletModel
    extends FlutterFlowModel<CatalogodigitalTabletWidget> {
  ///  Local state fields for this page.

  String searchQuery = '\"\"';

  List<CatagolodigitalStruct> catalogoItems = [];
  void addToCatalogoItems(CatagolodigitalStruct item) =>
      catalogoItems.add(item);
  void removeFromCatalogoItems(CatagolodigitalStruct item) =>
      catalogoItems.remove(item);
  void removeAtIndexFromCatalogoItems(int index) =>
      catalogoItems.removeAt(index);
  void insertAtIndexInCatalogoItems(int index, CatagolodigitalStruct item) =>
      catalogoItems.insert(index, item);
  void updateCatalogoItemsAtIndex(
          int index, Function(CatagolodigitalStruct) updateFn) =>
      catalogoItems[index] = updateFn(catalogoItems[index]);

  String? categoriaFiltro = '';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - buscarCatalogoCarrinhoSeguro] action in CatalogodigitalTablet widget.
  List<CatagolodigitalStruct>? catalogoSeguroResult;
  // State field(s) for Buscarprodutos widget.
  FocusNode? buscarprodutosFocusNode;
  TextEditingController? buscarprodutosTextController;
  String? Function(BuildContext, String?)?
      buscarprodutosTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    buscarprodutosFocusNode?.dispose();
    buscarprodutosTextController?.dispose();
  }
}
