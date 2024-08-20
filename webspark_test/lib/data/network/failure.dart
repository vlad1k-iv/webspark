class Failure {
  // error or success

  Failure(this.code, this.message);

  int code; // 200 or 400
  String message;
}
