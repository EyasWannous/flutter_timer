class Ticker {
  const Ticker();
  Stream<int> tick({required int ticks}) {
    return Stream<int>.periodic(
      const Duration(seconds: 1),
      (x) => (ticks - x - 1),
    ).take(ticks);
  }
}
