Future<void> hello() {
  return Future.delayed(Duration(seconds: 2), () {
    print('Test Furute');
  });
}

void main() {
  hello();
  print("done");
}
