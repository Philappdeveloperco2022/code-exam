import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetArtPieceCall {
  static Future<ApiCallResponse> call({
    String? objectID = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Art Piece',
      apiUrl:
          'https://collectionapi.metmuseum.org/public/collection/v1/objects/${objectID}',
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

class GetDepartmentsCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Departments',
      apiUrl:
          'https://collectionapi.metmuseum.org/public/collection/v1/departments',
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

class SearchArtCall {
  static Future<ApiCallResponse> call({
    String? q = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Search Art',
      apiUrl: 'https://collectionapi.metmuseum.org/public/collection/v1/search',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'q': q,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class DepartmentHighlightsCall {
  static Future<ApiCallResponse> call({
    int? departmentId,
    bool? isHighlight = true,
    String? q = '*',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Department Highlights',
      apiUrl: 'https://collectionapi.metmuseum.org/public/collection/v1/search',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'departmentId': departmentId,
        'isHighlight': isHighlight,
        'q': q,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AuthTokenCall {
  static Future<ApiCallResponse> call({
    String? email = 'jd_gopal_deshpande@jacobs-daniel.net',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'AuthToken',
      apiUrl:
          'https://gorest.co.in/public/v2/users?access-token=c1f32d7ac4d0de04e7c4ba1b0a752a4512a866ae46e160ea3fdf0c0b39b8ca89',
      callType: ApiCallType.GET,
      headers: {
        'Bearer':
            'c1f32d7ac4d0de04e7c4ba1b0a752a4512a866ae46e160ea3fdf0c0b39b8ca89',
      },
      params: {
        'id': 230532,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
    );
  }

  static dynamic jdgopaldeshpandejacobsdanielnet(dynamic response) =>
      getJsonField(
        response,
        r'''$[:].id''',
        true,
      );
}

class PostidCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? name = '',
    int? age,
    String? gender = '',
    String? status = '',
  }) {
    final body = '''
{
  "id": 230532,
  "name": "Gopal Deshpande JD",
  "email": "jd_gopal_deshpande@jacobs-daniel.net",
  "gender": "male",
  "status": "inactive"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'POSTID',
      apiUrl:
          'https://gorest.co.in/public/v2/users?access-token=c1f32d7ac4d0de04e7c4ba1b0a752a4512a866ae46e160ea3fdf0c0b39b8ca89?id=',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: true,
    );
  }
}

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

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
