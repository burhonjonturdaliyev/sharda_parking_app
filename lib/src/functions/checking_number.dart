class AllFunction {
  String carNumber(String number) {
    if (number.substring(2).startsWith(RegExp(r'^[0-9]'))) {
      return "${number.substring(2, 5)} ${number.substring(5, 8)}";
    }
    return "${number.substring(2, 3)} ${number.substring(3, 6)} ${number.substring(6)}";
  }
}
