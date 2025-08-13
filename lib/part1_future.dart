Future<String> getMessage() async {
  return await Future.delayed(
    Duration(seconds: 2),
    () => 'Hello!',
  );
}

// The async main function
Future<void> main() async {
  print('Waiting for message...');
  String message = await getMessage();
  print(message);
}