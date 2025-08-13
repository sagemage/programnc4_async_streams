Future<String> getErrorMessage() async {
  return await Future.delayed(
    Duration(seconds: 2),
    () {
      throw Exception('Something went wrong!');
    },
  );
}
Future<void> main() async {
  print('Waiting for result...');
  try {
    String result = await getErrorMessage();
    print(result); // This won't run because an error is thrown
  } catch (e) {
    print('Caught an error: $e');
  }
}