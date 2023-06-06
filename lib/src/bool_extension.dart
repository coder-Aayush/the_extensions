extension BoolX on bool {
  /// check if boolean is true
  /// ```dart
  /// final isTrue = true.isTrue;
  /// ```
  /// output: true
  bool get isTrue => this;

  /// check if boolean is false
  /// ```dart
  /// final isFalse = false.isFalse;
  /// ```
  /// output: true
  bool get isFalse => !this;

  /// toggle boolean
  /// ```dart
  /// final toggle = true.toggle;
  /// ```
  /// output: false
  bool get toggle => !this;

  /// Returns the boolean opposite of this.
  /// ```dart
  /// final not = true.not;
  /// ```
  /// output: false
  bool get not => !this;
}
