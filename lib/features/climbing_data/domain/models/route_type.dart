enum RouteType {
  sport,
  trad,
  bouldering,
  topRope;

  String get displayName {
    switch (this) {
      case RouteType.sport:
        return 'Sport';
      case RouteType.trad:
        return 'Trad';
      case RouteType.bouldering:
        return 'Bouldering';
      case RouteType.topRope:
        return 'Top Rope';
    }
  }
}
