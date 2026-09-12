void main() {
  final myList = ["clojure", "dart", "kotlin", "zig"];
  final iterator = myList.iterator;
  while (iterator.moveNext()) {
    print(iterator.current);
  }
}
