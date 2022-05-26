class ExceptionMessage implements Exception {
  final String message;

  ExceptionMessage(this.message);

  @override
  String toString() => message;
}
