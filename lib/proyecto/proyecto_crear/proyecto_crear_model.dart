import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'proyecto_crear_widget.dart' show ProyectoCrearWidget;
import 'package:flutter/material.dart';

class ProyectoCrearModel extends FlutterFlowModel<ProyectoCrearWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreController;
  String? Function(BuildContext, String?)? nombreControllerValidator;
  // State field(s) for Descripcion widget.
  FocusNode? descripcionFocusNode;
  TextEditingController? descripcionController;
  String? Function(BuildContext, String?)? descripcionControllerValidator;
  // State field(s) for FechaInicio widget.
  FocusNode? fechaInicioFocusNode;
  TextEditingController? fechaInicioController;
  String? Function(BuildContext, String?)? fechaInicioControllerValidator;
  // State field(s) for FechaFin widget.
  FocusNode? fechaFinFocusNode;
  TextEditingController? fechaFinController;
  String? Function(BuildContext, String?)? fechaFinControllerValidator;
  // State field(s) for Estado widget.
  String? estadoValue;
  FormFieldController<String>? estadoValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nombreFocusNode?.dispose();
    nombreController?.dispose();

    descripcionFocusNode?.dispose();
    descripcionController?.dispose();

    fechaInicioFocusNode?.dispose();
    fechaInicioController?.dispose();

    fechaFinFocusNode?.dispose();
    fechaFinController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
