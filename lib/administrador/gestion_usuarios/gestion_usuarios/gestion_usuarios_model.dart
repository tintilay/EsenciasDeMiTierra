import '/administrador/gestion_usuarios/modal_crear_rol/modal_crear_rol_widget.dart';
import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'gestion_usuarios_widget.dart' show GestionUsuariosWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class GestionUsuariosModel extends FlutterFlowModel<GestionUsuariosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField_BuscarDisciplina widget.
  FocusNode? textFieldBuscarDisciplinaFocusNode;
  TextEditingController? textFieldBuscarDisciplinaController;
  String? Function(BuildContext, String?)?
      textFieldBuscarDisciplinaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
  }

  void dispose() {
    unfocusNode.dispose();
    textFieldBuscarDisciplinaFocusNode?.dispose();
    textFieldBuscarDisciplinaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
