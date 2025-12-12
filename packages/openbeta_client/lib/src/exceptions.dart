class OpenBetaNetworkException implements Exception {
  final String message;
  OpenBetaNetworkException(this.message);

  @override
  String toString() => 'OpenBetaNetworkException: $message';
}

class OpenBetaParseException implements Exception {
  final String message;
  OpenBetaParseException(this.message);

  @override
  String toString() => 'OpenBetaParseException: $message';
}

class OpenBetaNotFoundException implements Exception {
  final String message;
  OpenBetaNotFoundException(this.message);

  @override
  String toString() => 'OpenBetaNotFoundException: $message';
}
