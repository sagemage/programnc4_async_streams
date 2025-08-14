Stream<int> oneToFive() async* {
  for (var i = 1; i <= 5; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}

Future<void> main() async {
  await for (final value in oneToFive()) {
    print(value);
  }
}