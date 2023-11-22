import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'tarea_model.dart';
export 'tarea_model.dart';

class TareaWidget extends StatefulWidget {
  const TareaWidget({
    super.key,
    required this.proyectoID,
  });

  final dynamic proyectoID;

  @override
  _TareaWidgetState createState() => _TareaWidgetState();
}

class _TareaWidgetState extends State<TareaWidget> {
  late TareaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TareaModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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

    return FutureBuilder<ApiCallResponse>(
      future: ProyectoITBGroup.getTareaCall.call(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final tareaGetTareaResponse = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              automaticallyImplyLeading: false,
              title: Text(
                'Tareas de Proyecto',
                style: FlutterFlowTheme.of(context).headlineMedium,
              ),
              actions: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 16.0, 8.0),
                  child: FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).alternate,
                    borderRadius: 12.0,
                    borderWidth: 2.0,
                    buttonSize: 40.0,
                    fillColor: FlutterFlowTheme.of(context).primary,
                    icon: Icon(
                      Icons.add,
                      color: FlutterFlowTheme.of(context).info,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.pushNamed('TareaCrear');
                    },
                  ),
                ),
              ],
              centerTitle: false,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                  ))
                    Container(
                      width: 270.0,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        borderRadius: BorderRadius.circular(0.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 24.0, 0.0, 16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.add_task_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 32.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'check.io',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 12.0,
                              thickness: 2.0,
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 12.0, 0.0, 0.0),
                                    child: Text(
                                      'Platform Navigation',
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: AnimatedContainer(
                                      duration: const Duration(milliseconds: 200),
                                      curve: Curves.easeInOut,
                                      width: double.infinity,
                                      height: 44.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 6.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Icon(
                                              Icons.space_dashboard,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Dashboard',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: AnimatedContainer(
                                      duration: const Duration(milliseconds: 200),
                                      curve: Curves.easeInOut,
                                      width: double.infinity,
                                      height: 44.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 6.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Icon(
                                              Icons.forum_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Chats',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: AnimatedContainer(
                                      duration: const Duration(milliseconds: 200),
                                      curve: Curves.easeInOut,
                                      width: double.infinity,
                                      height: 44.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .accent1,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 6.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Icon(
                                              Icons.checklist_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 24.0,
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'All Tasks',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 32.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Align(
                                                alignment: const AlignmentDirectional(
                                                    0.00, 0.00),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 4.0, 8.0, 4.0),
                                                  child: Text(
                                                    '12',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: AnimatedContainer(
                                      duration: const Duration(milliseconds: 200),
                                      curve: Curves.easeInOut,
                                      width: double.infinity,
                                      height: 44.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 6.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Icon(
                                              Icons.work,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Projects',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Settings',
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: AnimatedContainer(
                                      duration: const Duration(milliseconds: 200),
                                      curve: Curves.easeInOut,
                                      width: double.infinity,
                                      height: 44.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 6.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Icon(
                                              Icons.attach_money_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Billing',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: AnimatedContainer(
                                      duration: const Duration(milliseconds: 200),
                                      curve: Curves.easeInOut,
                                      width: double.infinity,
                                      height: 44.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 6.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Icon(
                                              Icons.wifi_tethering_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Explore',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ].divide(const SizedBox(height: 12.0)),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.00, -1.00),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 16.0),
                                child: Container(
                                  width: 250.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        4.0, 4.0, 4.0, 4.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: 115.0,
                                            height: 100.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 1.0,
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.wb_sunny_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 16.0,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          4.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Light Mode',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            width: 115.0,
                                            height: 100.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                width: 1.0,
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.nightlight_round,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 16.0,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          4.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Dark Mode',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Divider(
                              height: 12.0,
                              thickness: 2.0,
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 12.0, 16.0, 12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 50.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).accent1,
                                      borderRadius: BorderRadius.circular(12.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          2.0, 2.0, 2.0, 2.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: CachedNetworkImage(
                                          fadeInDuration:
                                              const Duration(milliseconds: 500),
                                          fadeOutDuration:
                                              const Duration(milliseconds: 500),
                                          imageUrl:
                                              'https://images.unsplash.com/photo-1624561172888-ac93c696e10c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjJ8fHVzZXJzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
                                          width: 44.0,
                                          height: 44.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Andrew D.',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge,
                                          ),
                                          Text(
                                            'admin@gmail.com',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.menu_open_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  Expanded(
                    child: Align(
                      alignment: const AlignmentDirectional(0.00, -1.00),
                      child: Container(
                        width: double.infinity,
                        constraints: const BoxConstraints(
                          maxWidth: 970.0,
                        ),
                        decoration: const BoxDecoration(),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                              ))
                                Container(
                                  width: double.infinity,
                                  height: 24.0,
                                  decoration: const BoxDecoration(),
                                ),
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                              ))
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 16.0, 0.0, 4.0),
                                  child: Text(
                                    'All Tasks',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium,
                                  ),
                                ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Listado de tareas del proyecto.',
                                  style:
                                      FlutterFlowTheme.of(context).labelMedium,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 12.0, 16.0, 16.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 8.0),
                                      child: FlutterFlowChoiceChips(
                                        options: const [
                                          ChipData('Todas'),
                                          ChipData('Pendiente'),
                                          ChipData('En Proceso'),
                                          ChipData('Finalizado')
                                        ],
                                        onChanged: (val) => setState(() =>
                                            _model.choiceChipsValue =
                                                val?.first),
                                        selectedChipStyle: ChipStyle(
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                              ),
                                          iconColor:
                                              FlutterFlowTheme.of(context).info,
                                          iconSize: 18.0,
                                          elevation: 2.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .accent1,
                                          borderWidth: 1.0,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        unselectedChipStyle: ChipStyle(
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                              ),
                                          iconColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          iconSize: 18.0,
                                          elevation: 0.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          borderWidth: 1.0,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        chipSpacing: 8.0,
                                        rowSpacing: 12.0,
                                        multiselect: false,
                                        initialized:
                                            _model.choiceChipsValue != null,
                                        alignment: WrapAlignment.start,
                                        controller: _model
                                                .choiceChipsValueController ??=
                                            FormFieldController<List<String>>(
                                          ['Pendiente'],
                                        ),
                                        wrapped: true,
                                      ),
                                    ),
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                    ))
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 0.0, 0.0),
                                        child: SizedBox(
                                          width: 300.0,
                                          child: TextFormField(
                                            controller: _model.textController,
                                            focusNode:
                                                _model.textFieldFocusNode,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Search all tasks...',
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium,
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 0.0, 0.0),
                                              suffixIcon: Icon(
                                                Icons.search_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                            cursorColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            validator: _model
                                                .textControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  alignment: const AlignmentDirectional(-1.00, 0.00),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          flex: 4,
                                          child: Align(
                                            alignment: const AlignmentDirectional(
                                                -1.00, 0.00),
                                            child: Text(
                                              'Nombre',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: Align(
                                            alignment: const AlignmentDirectional(
                                                -1.00, 0.00),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(4.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Asignado a',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall,
                                              ),
                                            ),
                                          ),
                                        ),
                                        if (responsiveVisibility(
                                          context: context,
                                          phone: false,
                                        ))
                                          Expanded(
                                            flex: 2,
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.00, 0.00),
                                              child: Text(
                                                'Due Date',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall,
                                              ),
                                            ),
                                          ),
                                        Expanded(
                                          flex: 2,
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 0.0, 16.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          1.00, 0.00),
                                                  child: Text(
                                                    'Estado',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmall,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Builder(
                                builder: (context) {
                                  final tareas = ProyectoITBGroup.getTareaCall
                                          .content(
                                            tareaGetTareaResponse.jsonBody,
                                          )
                                          ?.toList() ??
                                      [];
                                  return ListView.separated(
                                    padding: const EdgeInsets.fromLTRB(
                                      0,
                                      0.0,
                                      0,
                                      44.0,
                                    ),
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: tareas.length,
                                    separatorBuilder: (_, __) =>
                                        const SizedBox(height: 1.0),
                                    itemBuilder: (context, tareasIndex) {
                                      final tareasItem = tareas[tareasIndex];
                                      return Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 0.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                offset: const Offset(0.0, 1.0),
                                              )
                                            ],
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 12.0, 16.0, 12.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  flex: 4,
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.00, 0.00),
                                                    child: Text(
                                                      getJsonField(
                                                        tareasItem,
                                                        r'''$.Nombre''',
                                                      ).toString(),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 36.0,
                                                  height: 36.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent1,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(2.0, 2.0,
                                                                2.0, 2.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: Image.network(
                                                        'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDZ8fHByb2ZpbGV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=900&q=60',
                                                        width: 120.0,
                                                        height: 120.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                ))
                                                  Expanded(
                                                    flex: 3,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Randy Rodriguez',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                            child: Text(
                                                              'randy@domainname.com',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                  ),
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            height: 4.0)),
                                                      ),
                                                    ),
                                                  ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                ))
                                                  Expanded(
                                                    flex: 2,
                                                    child: Text(
                                                      'June 5th',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                  ),
                                                Expanded(
                                                  flex: 2,
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent2,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondary,
                                                          ),
                                                        ),
                                                        child: Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.00, 0.00),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        4.0,
                                                                        8.0,
                                                                        4.0),
                                                            child: Text(
                                                              'In Progress',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodySmall,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
