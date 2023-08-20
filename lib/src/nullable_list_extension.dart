extension NullableListExtension<T> on List<T>? {
  bool get isNullOrEmpty {
    return this == null || this!.isEmpty;
  }

  bool get isNullOrNotEmpty {
    return this == null || this!.isNotEmpty;
  }
}
