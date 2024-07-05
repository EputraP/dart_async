Future<String> sayHello(String name) {
  return Future.delayed(Duration(seconds: 2), () {
    // return "Hello $name";
    throw Error();
  });
}

void main() {
  sayHello("Tiwin")
      .whenComplete(() => print("Done Future"))
      .onError((error, StackTrace) => "fallback")
      .then((value) => print(value));
  print("done");
}
