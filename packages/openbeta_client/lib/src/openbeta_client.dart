import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:openbeta_client/src/models/openbeta_route_model.dart';
import 'exceptions.dart';

@injectable
class OpenBetaClient {
  final GraphQLClient client;

  OpenBetaClient({GraphQLClient? client})
      : client = client ??
            GraphQLClient(
              link: HttpLink('https://api.openbeta.io/graphql'),
              cache: GraphQLCache(),
            );

  static const String _searchRoutesQuery = r'''
    query SearchRoutes($areaName: String!) {
      areas(filter: { area_name: { match: $areaName } }) {
        uuid
        area_name
        climbs {
          uuid
          name
          fa
          length
          boltsCount
          grades {
            yds
          }
          type {
            sport
            trad
            bouldering
            tr
          }
          pathTokens
        }
      }
    }
  ''';

  Future<List<OpenBetaRouteModel>> searchRoutes(String query) async {
    try {
      final QueryOptions options = QueryOptions(
        document: gql(_searchRoutesQuery),
        variables: {'areaName': query},
      );

      final QueryResult result = await client.query(options);

      if (result.hasException) {
        if (result.exception!.linkException != null) {
          throw OpenBetaNetworkException(
            'Network error: ${result.exception!.linkException}',
          );
        }
        if (result.exception!.graphqlErrors.isNotEmpty) {
          throw OpenBetaParseException(
            'GraphQL error: ${result.exception!.graphqlErrors.first.message}',
          );
        }
        throw OpenBetaNetworkException('Unknown error occurred');
      }

      if (result.data == null) {
        throw OpenBetaNotFoundException('No data returned from API');
      }

      try {
        final List<dynamic> areas = result.data!['areas'] as List<dynamic>;
        final List<OpenBetaRouteModel> routes = [];

        for (final area in areas) {
          final List<dynamic> climbs = area['climbs'] as List<dynamic>;
          final String location = area['area_name'] as String;

          for (final climb in climbs) {
            routes.add(_parseClimb(climb, location));
          }
        }

        return routes;
      } catch (e) {
        throw OpenBetaParseException('Failed to parse response: $e');
      }
    } catch (e) {
      if (e is OpenBetaNetworkException ||
          e is OpenBetaParseException ||
          e is OpenBetaNotFoundException) {
        rethrow;
      }
      throw OpenBetaNetworkException('Unexpected error: $e');
    }
  }

  OpenBetaRouteModel _parseClimb(Map<String, dynamic> climb, String location) {
    final grades = climb['grades'] as Map<String, dynamic>?;
    final type = climb['type'] as Map<String, dynamic>;

    // Determine climb type
    String climbType = 'Unknown';
    if (type['sport'] == true) {
      climbType = 'Sport';
    } else if (type['trad'] == true) {
      climbType = 'Trad';
    } else if (type['bouldering'] == true) {
      climbType = 'Boulder';
    }

    // Calculate rating (placeholder - OpenBeta doesn't seem to have star ratings)
    double rating = 0.0;

    return OpenBetaRouteModel(
      id: climb['uuid'] as String,
      name: climb['name'] as String,
      grade: grades?['yds'] as String? ?? 'Unknown',
      type: climbType,
      rating: rating,
      location: location,
    );
  }
}
