String roundNumber(num input) {
  if (input % 1 == 0) {
    return input.toInt().toString();
  } else {
    return input.toStringAsFixed(1);
  }
}
