class Ticker {
  const Ticker();

  Stream<int> tick({required int ticks}) {
    return Stream.periodic(
      const Duration(seconds: 1),
          (x) {
        final value = ticks - x - 1;
        print('Tick emitted: $value'); // 👈 print whenever it's called
        return value;
      },
    ).take(ticks);
  }
}

