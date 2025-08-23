extension StringExtensions on String {
  /// Capitalizes the first letter of the string and converts the rest to lowercase.
  String capitalize() {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }

  /// Validates if the string is a valid email address.
  bool isValidEmail() {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(this);
  }

  /// Attempts to parse the string into a DateTime object.
  /// Returns null if the string cannot be parsed as a valid date.
  DateTime? toDateTime() {
    try {
      return DateTime.tryParse(this);
    } catch (e) {
      return null;
    }
  }

  /// Validates if the string is a valid phone number.
  /// Supports formats like +1234567890, 123-456-7890, (123) 456-7890, etc.
  bool isValidPhoneNumber() {
    return RegExp(r'^\+?[\d\s\-\(\)]{8,15}$').hasMatch(this);
  }

  /// Removes leading and trailing whitespace and normalizes internal spaces.
  String clean() {
    return trim().replaceAll(RegExp(r'\s+'), ' ');
  }

  /// Truncates the string to a specified length and adds an ellipsis if needed.
  String truncate(int maxLength, {String ellipsis = '...'}) {
    if (length <= maxLength) return this;
    return substring(0, maxLength - ellipsis.length) + ellipsis;
  }

  /// Converts the string to a slug (e.g., for URLs).
  String toSlug() {
    return trim()
        .toLowerCase()
        .replaceAll(RegExp(r'[^a-z0-9\s-]'), '')
        .replaceAll(RegExp(r'\s+'), '-')
        .replaceAll(RegExp(r'-+'), '-');
  }

  /// Checks if the string is a valid ObjectId (24-character hexadecimal string).
  bool isValidObjectId() {
    return RegExp(r'^[0-9a-fA-F]{24}$').hasMatch(this);
  }

  /// Converts the string to a double, returning null if invalid.
  double? toDouble() {
    try {
      return double.tryParse(this);
    } catch (e) {
      return null;
    }
  }

  /// Converts the string to an int, returning null if invalid.
  int? toInt() {
    try {
      return int.tryParse(this);
    } catch (e) {
      return null;
    }
  }

  /// Removes specified characters from the string.
  String removeCharacters(String chars) {
    return replaceAll(RegExp('[$chars]'), '');
  }

  /// Checks if the string contains only alphanumeric characters.
  bool isAlphanumeric() {
    return RegExp(r'^[a-zA-Z0-9]+$').hasMatch(this);
  }
}