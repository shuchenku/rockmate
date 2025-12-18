enum RouteType {
  sport,
  trad,
  boulder,
  topRope,
  alpine,
  ice,
  mixed;

  String get displayName {
    switch (this) {
      case RouteType.sport:
        return 'Sport';
      case RouteType.trad:
        return 'Trad';
      case RouteType.boulder:
        return 'Boulder';
      case RouteType.topRope:
        return 'Top Rope';
      case RouteType.alpine:
        return 'Alpine';
      case RouteType.ice:
        return 'Ice';
      case RouteType.mixed:
        return 'Mixed';
    }
  }
}
