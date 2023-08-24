extension CapitalizeFirstLetter on String {
  String capitalizeFirstLetter() {
    if (isNotEmpty) {
      if (length >= 2) {
        return this[0].toUpperCase() + substring(1).toLowerCase();
      }
      return this[0].toUpperCase();
    }
    return this;
  }
}
