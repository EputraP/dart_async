Future<String> name() {
  return Future.value("Ewe Hup Hup Uwo");
}

void main() {
  name()
      .then((value) => value.split(" "))
      .then((value) => value.reversed)
      .then((value) => value.map((e) => e.toUpperCase()))
      .then((value) => print(value));
  print("done");
}
