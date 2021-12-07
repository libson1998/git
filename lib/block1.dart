

Stream<int> boatStream() async* {
  for (int i = 1; i <= 10; i++) {
    print("SENT BOAT no." + i.toString());
    await Future.delayed(Duration(seconds: 2));
    yield i;
  }
}
  void main(List<String> args) async {
    Stream<int> stream = boatStream();

    stream.listen((recievedData) {
      print("RECIEVED Boat no." + recievedData.toString());
    });
  }

