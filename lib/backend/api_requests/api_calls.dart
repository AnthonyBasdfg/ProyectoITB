import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start ProyectoITB Group Code

class ProyectoITBGroup {
  static String baseUrl =
      'https://jedqndqh9l.execute-api.us-east-1.amazonaws.com/ProyectoITB';
  static Map<String, String> headers = {};
  static GetUsuarioCall getUsuarioCall = GetUsuarioCall();
  static PostUsuarioCall postUsuarioCall = PostUsuarioCall();
  static AuthCall authCall = AuthCall();
  static GetProyectoCall getProyectoCall = GetProyectoCall();
  static PostProyectoCall postProyectoCall = PostProyectoCall();
  static GetEstadoCall getEstadoCall = GetEstadoCall();
  static GetTareaCall getTareaCall = GetTareaCall();
  static PostTareaCall postTareaCall = PostTareaCall();
}

class GetUsuarioCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getUsuario',
      apiUrl: '${ProyectoITBGroup.baseUrl}/Usuario',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class PostUsuarioCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'postUsuario',
      apiUrl: '${ProyectoITBGroup.baseUrl}/Usuario',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AuthCall {
  Future<ApiCallResponse> call({
    String? correo = '',
    String? contrasena = '',
  }) async {
    final ffApiRequestBody = '''
{
  "correo": "$correo",
  "contrasena": "$contrasena"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Auth',
      apiUrl: '${ProyectoITBGroup.baseUrl}/Auth',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.content[:].id''',
      );
  dynamic nombre(dynamic response) => getJsonField(
        response,
        r'''$.content[:].Nombre''',
      );
  dynamic correo(dynamic response) => getJsonField(
        response,
        r'''$.content[:].Correo''',
      );
}

class GetProyectoCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getProyecto',
      apiUrl: '${ProyectoITBGroup.baseUrl}/Proyecto',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.content[:].Id''',
        true,
      );
  dynamic nombre(dynamic response) => getJsonField(
        response,
        r'''$.content[:].Nombre''',
        true,
      );
  dynamic descripcion(dynamic response) => getJsonField(
        response,
        r'''$.content[:].Descripcion''',
        true,
      );
  dynamic fechaInicio(dynamic response) => getJsonField(
        response,
        r'''$.content[:].FechaInicio''',
        true,
      );
  dynamic fechaFin(dynamic response) => getJsonField(
        response,
        r'''$.content[:].FechaFin''',
        true,
      );
  dynamic estado(dynamic response) => getJsonField(
        response,
        r'''$.content[:].Estado''',
        true,
      );
  dynamic content(dynamic response) => getJsonField(
        response,
        r'''$.content''',
        true,
      );
}

class PostProyectoCall {
  Future<ApiCallResponse> call({
    String? nombre = '',
    String? descripcion = '',
    String? fechaInicio = '',
    String? fechaFin = '',
    int? estado,
  }) async {
    final ffApiRequestBody = '''
{
  "nombre": "$nombre",
  "descripcion": "$descripcion",
  "fechaInicio": "$fechaInicio",
  "FechaFin": "$fechaFin",
  "estado": $estado
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'postProyecto',
      apiUrl: '${ProyectoITBGroup.baseUrl}/Proyecto',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetEstadoCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getEstado',
      apiUrl: '${ProyectoITBGroup.baseUrl}/Estado',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.content[:].id''',
        true,
      );
  dynamic nombre(dynamic response) => getJsonField(
        response,
        r'''$.content[:].Nombre''',
        true,
      );
  dynamic content(dynamic response) => getJsonField(
        response,
        r'''$.content''',
        true,
      );
}

class GetTareaCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getTarea',
      apiUrl: '${ProyectoITBGroup.baseUrl}/Tarea',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.content[:].id''',
        true,
      );
  dynamic nombre(dynamic response) => getJsonField(
        response,
        r'''$.content[:].Nombre''',
        true,
      );
  dynamic descripcion(dynamic response) => getJsonField(
        response,
        r'''$.content[:].Descripcion''',
        true,
      );
  dynamic proyecto(dynamic response) => getJsonField(
        response,
        r'''$.content[:].Proyecto''',
        true,
      );
  dynamic fechaInicio(dynamic response) => getJsonField(
        response,
        r'''$.content[:].FechaInicio''',
        true,
      );
  dynamic fechaFin(dynamic response) => getJsonField(
        response,
        r'''$.content[:].FechaFin''',
        true,
      );
  dynamic estado(dynamic response) => getJsonField(
        response,
        r'''$.content[:].Estado''',
        true,
      );
  dynamic content(dynamic response) => getJsonField(
        response,
        r'''$.content''',
        true,
      );
}

class PostTareaCall {
  Future<ApiCallResponse> call({
    String? nombre = '',
    String? descripcion = '',
    int? proyecto,
    String? fechaInicio = '',
    String? fechaFin = '',
    int? estado,
  }) async {
    final ffApiRequestBody = '''
{
  "nombre": "$nombre",
  "descripcion": "$descripcion",
  "proyecto": $proyecto,
  "fechaInicio": "$fechaInicio",
  "FechaFin": "$fechaFin",
  "estado": $estado
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'postTarea',
      apiUrl: '${ProyectoITBGroup.baseUrl}/Tarea',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End ProyectoITB Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
