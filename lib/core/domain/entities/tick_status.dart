enum TickStatus {
  todo('To-Do'),
  fell('Fell / Hang'),
  take('Take'),
  onSight('On-Sight'),
  flash('Flash'),
  redPoint('Red-Point');

  final String displayName;
  const TickStatus(this.displayName);
}
