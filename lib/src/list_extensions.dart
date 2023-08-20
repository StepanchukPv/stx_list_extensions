extension ListExtension<T> on List<T> {
  void reorder(int oldIndex, int newIndex) {
    insert(newIndex, removeAt(oldIndex));
  }

  List<T> replaceWhere(
    bool Function(T element) predicate,
    T Function(T oldValue) toReplace, {
    bool deepCopy = true,
  }) {
    final index = indexWhere(predicate);

    return (deepCopy ? toList() : this)..[index] = toReplace(this[index]);
  }

  Iterable<T> whereIndexed(
    bool Function(int index, T element) test,
  ) sync* {
    for (int i = 0; i < length; i++) {
      T element = this[i];

      if (test(i, element)) yield element;
    }
  }

  Iterable<T> mapIndexed(T Function(int index, T element) test) sync* {
    for (int i = 0; i < length; i++) {
      final element = this[i];

      yield test(i, element);
    }
  }
}
