//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SearchApi {
  SearchApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /search/explore' operation and returns the [Response].
  Future<Response> getExploreDataWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/search/explore';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  Future<List<SearchExploreResponseDto>?> getExploreData() async {
    final response = await getExploreDataWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SearchExploreResponseDto>') as List)
        .cast<SearchExploreResponseDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'GET /search/suggestions' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [SearchSuggestionType] type (required):
  ///
  /// * [String] country:
  ///
  /// * [String] make:
  ///
  /// * [String] model:
  ///
  /// * [String] state:
  Future<Response> getSearchSuggestionsWithHttpInfo(SearchSuggestionType type, { String? country, String? make, String? model, String? state, }) async {
    // ignore: prefer_const_declarations
    final path = r'/search/suggestions';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (country != null) {
      queryParams.addAll(_queryParams('', 'country', country));
    }
    if (make != null) {
      queryParams.addAll(_queryParams('', 'make', make));
    }
    if (model != null) {
      queryParams.addAll(_queryParams('', 'model', model));
    }
    if (state != null) {
      queryParams.addAll(_queryParams('', 'state', state));
    }
      queryParams.addAll(_queryParams('', 'type', type));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [SearchSuggestionType] type (required):
  ///
  /// * [String] country:
  ///
  /// * [String] make:
  ///
  /// * [String] model:
  ///
  /// * [String] state:
  Future<List<String>?> getSearchSuggestions(SearchSuggestionType type, { String? country, String? make, String? model, String? state, }) async {
    final response = await getSearchSuggestionsWithHttpInfo(type,  country: country, make: make, model: model, state: state, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<String>') as List)
        .cast<String>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'GET /search' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [bool] clip:
  ///
  /// * [bool] motion:
  ///
  /// * [num] page:
  ///
  /// * [String] q:
  ///
  /// * [String] query:
  ///
  /// * [bool] recent:
  ///
  /// * [num] size:
  ///
  /// * [bool] smart:
  ///
  /// * [String] type:
  ///
  /// * [bool] withArchived:
  Future<Response> searchWithHttpInfo({ bool? clip, bool? motion, num? page, String? q, String? query, bool? recent, num? size, bool? smart, String? type, bool? withArchived, }) async {
    // ignore: prefer_const_declarations
    final path = r'/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (clip != null) {
      queryParams.addAll(_queryParams('', 'clip', clip));
    }
    if (motion != null) {
      queryParams.addAll(_queryParams('', 'motion', motion));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }
    if (query != null) {
      queryParams.addAll(_queryParams('', 'query', query));
    }
    if (recent != null) {
      queryParams.addAll(_queryParams('', 'recent', recent));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }
    if (smart != null) {
      queryParams.addAll(_queryParams('', 'smart', smart));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (withArchived != null) {
      queryParams.addAll(_queryParams('', 'withArchived', withArchived));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [bool] clip:
  ///
  /// * [bool] motion:
  ///
  /// * [num] page:
  ///
  /// * [String] q:
  ///
  /// * [String] query:
  ///
  /// * [bool] recent:
  ///
  /// * [num] size:
  ///
  /// * [bool] smart:
  ///
  /// * [String] type:
  ///
  /// * [bool] withArchived:
  Future<SearchResponseDto?> search({ bool? clip, bool? motion, num? page, String? q, String? query, bool? recent, num? size, bool? smart, String? type, bool? withArchived, }) async {
    final response = await searchWithHttpInfo( clip: clip, motion: motion, page: page, q: q, query: query, recent: recent, size: size, smart: smart, type: type, withArchived: withArchived, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchResponseDto',) as SearchResponseDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /search/metadata' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [MetadataSearchDto] metadataSearchDto (required):
  Future<Response> searchMetadataWithHttpInfo(MetadataSearchDto metadataSearchDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/search/metadata';

    // ignore: prefer_final_locals
    Object? postBody = metadataSearchDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [MetadataSearchDto] metadataSearchDto (required):
  Future<SearchResponseDto?> searchMetadata(MetadataSearchDto metadataSearchDto,) async {
    final response = await searchMetadataWithHttpInfo(metadataSearchDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchResponseDto',) as SearchResponseDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /search/person' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] name (required):
  ///
  /// * [bool] withHidden:
  Future<Response> searchPersonWithHttpInfo(String name, { bool? withHidden, }) async {
    // ignore: prefer_const_declarations
    final path = r'/search/person';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'name', name));
    if (withHidden != null) {
      queryParams.addAll(_queryParams('', 'withHidden', withHidden));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] name (required):
  ///
  /// * [bool] withHidden:
  Future<List<PersonResponseDto>?> searchPerson(String name, { bool? withHidden, }) async {
    final response = await searchPersonWithHttpInfo(name,  withHidden: withHidden, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PersonResponseDto>') as List)
        .cast<PersonResponseDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'POST /search/smart' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [SmartSearchDto] smartSearchDto (required):
  Future<Response> searchSmartWithHttpInfo(SmartSearchDto smartSearchDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/search/smart';

    // ignore: prefer_final_locals
    Object? postBody = smartSearchDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [SmartSearchDto] smartSearchDto (required):
  Future<SearchResponseDto?> searchSmart(SmartSearchDto smartSearchDto,) async {
    final response = await searchSmartWithHttpInfo(smartSearchDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchResponseDto',) as SearchResponseDto;
    
    }
    return null;
  }
}
