import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'terminos_y_condiciones_model.dart';
export 'terminos_y_condiciones_model.dart';

class TerminosYCondicionesWidget extends StatefulWidget {
  const TerminosYCondicionesWidget({Key? key}) : super(key: key);

  @override
  _TerminosYCondicionesWidgetState createState() =>
      _TerminosYCondicionesWidgetState();
}

class _TerminosYCondicionesWidgetState
    extends State<TerminosYCondicionesWidget> {
  late TerminosYCondicionesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TerminosYCondicionesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: responsiveVisibility(
          context: context,
          desktop: false,
        )
            ? AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primary,
                automaticallyImplyLeading: false,
                leading: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    context.pop();
                  },
                ),
                title: Text(
                  'Terminos Y condiciones',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Outfit',
                        color: Colors.white,
                        fontSize: 22.0,
                      ),
                ),
                actions: [],
                centerTitle: false,
                elevation: 2.0,
              )
            : null,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: 700.0,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                  child: PageView(
                    controller: _model.pageViewController ??=
                        PageController(initialPage: 0),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 16.0),
                        child: Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 8.0, 8.0),
                            child: Text(
                              'Términos y Condiciones de Uso para la Aplicación de Artes Visuales\n\nBienvenido/a a Esencias de mi Tierra, una plataforma dedicada a las artes visuales. Estos términos y condiciones regulan el uso de nuestra aplicación, por lo que es importante que los leas detenidamente antes de utilizarla. Al acceder o utilizar nuestra aplicación, aceptas estos términos y condiciones en su totalidad.\n\n1. Uso de la Aplicación\n\n1.1. Registro de Cuenta: Al registrarte en nuestra aplicación, proporcionas información precisa y actualizada. Eres responsable de mantener la confidencialidad de tu cuenta y contraseña, así como de todas las actividades que ocurran bajo tu cuenta.\n\n1.2. Uso Adecuado: Te comprometes a utilizar la aplicación de manera ética y legal, respetando los derechos de otros usuarios y de terceros. No debes realizar actividades que puedan dañar, sobrecargar o interferir con el funcionamiento de la aplicación.',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return 14.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return 18.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 24.0;
                                      } else {
                                        return 24.0;
                                      }
                                    }(),
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 16.0),
                        child: Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 8.0, 8.0),
                            child: Text(
                              '2. Contenido y Propiedad Intelectual\n\n2.1. Derechos de Autor: Todo el contenido proporcionado por la aplicación, incluyendo pero no limitándose a imágenes, textos, videos, y otros materiales, están protegidos por derechos de autor y son propiedad del GAMT o de sus licenciantes.\n\n2.2. Licencia de Uso: Al subir contenido a la aplicación, otorgas a [Nombre de la Empresa] una licencia no exclusiva, transferible, sublicenciable, libre de regalías y mundial para utilizar, reproducir, distribuir y mostrar dicho contenido en relación con la operación y promoción de la aplicación.\n\n3. Privacidad\n\n3.1. Datos Personales: Al utilizar la aplicación, aceptas nuestra política de privacidad, que describe cómo recopilamos, usamos y compartimos tus datos personales. Te recomendamos revisar esta política para entender cómo manejamos tu información.',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return 14.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return 18.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 24.0;
                                      } else {
                                        return 24.0;
                                      }
                                    }(),
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 16.0),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 8.0, 8.0),
                            child: Text(
                              '4. Limitación de Responsabilidad\n\n4.1. Uso bajo tu Propio Riesgo: El uso de la aplicación es bajo tu propio riesgo. GAMT no se hace responsable de cualquier daño directo, indirecto, incidental, especial, emergente o punitivo que pueda surgir por el uso o la imposibilidad de usar la aplicación.\n\n5. Modificaciones y Terminación\n\n5.1. Modificaciones: Nos reservamos el derecho de modificar, suspender o interrumpir, temporal o permanentemente, la aplicación o cualquier parte de ella, con o sin previo aviso.\n\n5.2. Terminación del Acuerdo: Este acuerdo estará vigente hasta que sea terminado por ti o por nosotros. Si incumples con estos términos y condiciones, nos reservamos el derecho de terminar tu acceso a la aplicación sin previo aviso.\n\nEstos términos y condiciones son un acuerdo legal entre tú y el GAMT con respecto al uso de la aplicación. Si tienes alguna pregunta o inquietud, no dudes en contactarnos en escenciasdemitierra22@gmail.com.\n\nFecha de vigencia: noviembre - 2023',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return 14.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return 18.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 24.0;
                                      } else {
                                        return 24.0;
                                      }
                                    }(),
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.00, 1.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 16.0),
                    child: smooth_page_indicator.SmoothPageIndicator(
                      controller: _model.pageViewController ??=
                          PageController(initialPage: 0),
                      count: 3,
                      axisDirection: Axis.horizontal,
                      onDotClicked: (i) async {
                        await _model.pageViewController!.animateToPage(
                          i,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      },
                      effect: smooth_page_indicator.ExpandingDotsEffect(
                        expansionFactor: 3.0,
                        spacing: 8.0,
                        radius: 16.0,
                        dotWidth: 16.0,
                        dotHeight: 8.0,
                        dotColor: FlutterFlowTheme.of(context).accent1,
                        activeDotColor: FlutterFlowTheme.of(context).primary,
                        paintStyle: PaintingStyle.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
