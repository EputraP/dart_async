Future<String> sayHello(String name) {
  return Future.value("Hello $name");
}

void main() {
  sayHello("Zeus")
      .whenComplete(() => print("All Done"))
      .then((value) => print(value))
      .catchError((error) => print("Error with message ${error.message}"));

  print("Done");
}
