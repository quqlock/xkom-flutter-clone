String checkTimeMessage() {
  var now = DateTime.now();
  return now.hour > 18 ? 'Dobry wieczór!' : 'Dzień dobry!';
}
