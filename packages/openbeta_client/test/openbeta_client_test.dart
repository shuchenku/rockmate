import 'package:flutter_test/flutter_test.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mocktail/mocktail.dart';
import 'package:openbeta_client/openbeta_client.dart';

class MockGraphQLClient extends Mock implements GraphQLClient {}
class MockQueryOptions extends Mock implements QueryOptions {}
class MockQueryResult extends Mock implements QueryResult {}
class MockLinkException extends Mock implements LinkException {}

void main() {
  late MockGraphQLClient mockGraphQLClient;
  late OpenBetaClient openBetaClient;

  setUp(() {
    mockGraphQLClient = MockGraphQLClient();
    openBetaClient = OpenBetaClient(client: mockGraphQLClient);
    registerFallbackValue(QueryOptions(document: gql('query {}')));
  });

  group('OpenBetaClient', () {
    test('searchRoutes returns list of routes on success', () async {
      final mockData = {
        'areas': [
          {
            'uuid': 'area-1',
            'area_name': 'Yosemite',
            'climbs': [
              {
                'uuid': 'climb-1',
                'name': 'The Nose',
                'grades': {'yds': '5.9'},
                'type': {'sport': false, 'trad': true, 'bouldering': false},
                'length': 1000,
                'boltsCount': -1,
                'pathTokens': ['Yosemite', 'The Nose']
              }
            ]
          }
        ]
      };

      final mockResult = MockQueryResult();
      when(() => mockResult.hasException).thenReturn(false);
      when(() => mockResult.data).thenReturn(mockData);
      
      when(() => mockGraphQLClient.query(any())).thenAnswer((_) async => mockResult);

      final result = await openBetaClient.searchRoutes('Yosemite');

      expect(result.length, 1);
      expect(result.first.name, 'The Nose');
      expect(result.first.type, 'Trad');
      expect(result.first.location, 'Yosemite');
    });

    test('searchRoutes throws OpenBetaNotFoundException when data is null', () async {
      final mockResult = MockQueryResult();
      when(() => mockResult.hasException).thenReturn(false);
      when(() => mockResult.data).thenReturn(null);
      
      when(() => mockGraphQLClient.query(any())).thenAnswer((_) async => mockResult);

      expect(
        () => openBetaClient.searchRoutes('Unknown'),
        throwsA(isA<OpenBetaNotFoundException>()),
      );
    });

    test('searchRoutes throws OpenBetaNetworkException on network error', () async {
      final mockLinkException = MockLinkException();
      when(() => mockLinkException.originalException).thenReturn('Connection refused');
      
      final mockResult = MockQueryResult();
      when(() => mockResult.hasException).thenReturn(true);
      when(() => mockResult.exception).thenReturn(
        OperationException(
          linkException: mockLinkException,
        ),
      );
      
      when(() => mockGraphQLClient.query(any())).thenAnswer((_) async => mockResult);

      expect(
        () => openBetaClient.searchRoutes('Error'),
        throwsA(isA<OpenBetaNetworkException>()),
      );
    });
    
    test('searchRoutes returns empty list when no areas match', () async {
       final mockData = {
        'areas': []
      };

      final mockResult = MockQueryResult();
      when(() => mockResult.hasException).thenReturn(false);
      when(() => mockResult.data).thenReturn(mockData);
      
      when(() => mockGraphQLClient.query(any())).thenAnswer((_) async => mockResult);

      final result = await openBetaClient.searchRoutes('NonExistentArea');

      expect(result, isEmpty);
    });
  });
}
