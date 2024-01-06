import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CrearPDFCall {
  static Future<ApiCallResponse> call({
    String? nombreUsuario = '',
    String? email = '',
    int? id,
    String? nombre = '',
    String? descripcion = '',
    String? imagen = '',
  }) async {
    final ffApiRequestBody = '''
{
  "template_id": "96c77b2385050852",
  "export_type": "json",
  "expiration": 10,
  "output_file": "my_new.pdf",
  "data": {
    "order_number": "83472842",
    "order_date": "2021-09-30",
    "ship_date": "2021-09-30",
    "currency": "USD",
    "company_name": "Your Company",
    "email": "${email}",
    "customer_name": "${nombreUsuario}",
    "ship_to": "Orsis Pte Ltd",
    "ship_to_address": "2769 Nutter Street,",
    "is_partial_order": false,
    "items": [
      {
        "tracking_id": ${id},
        "description": "${nombre}",
        "qty_ordered": 2,
        "qty_shipped": 2,
        "image_url": "${imagen}"
      }
    ],
    "gross_total": 25055
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CrearPDF',
      apiUrl: 'https://api.craftmypdf.com/v1/create',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'X-API-KEY': '2470ODExOTo4MTUyOjk2bVBFTjZrajl4MkJqZnM',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic url(dynamic response) => getJsonField(
        response,
        r'''$.file''',
      );
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

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
