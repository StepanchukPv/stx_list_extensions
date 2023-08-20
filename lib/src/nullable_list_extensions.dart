extension NullableListExtension<T> on List<T>? {
  /// Return true is list is null or empty
  bool get isNullOrEmpty {
    return this == null || this!.isEmpty;
  }

  /// Return true is list is null or not empty
  bool get isNullOrNotEmpty {
    return this == null || this!.isNotEmpty;
  }
}
