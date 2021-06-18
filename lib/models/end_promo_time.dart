class EndPromoTime {
  int endHour = 21;
  int endMinutes = 59;
  int endSeconds = 59;

  EndPromoTime({this.endHour, this.endMinutes, this.endSeconds});

  var timeToEndPromo = DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day, 21, 59, 59)
      .difference(DateTime.now());

  int hours() {
    return (timeToEndPromo.inMilliseconds ~/ (60 * 60 * 1000));
  }

  int minutes() {
    return (timeToEndPromo.inMilliseconds -
            (this.hours() * (60 * 60 * 1000))) ~/
        (60 * 60 * 1000 / 60);
  }

  int seconds() {
    return ((timeToEndPromo.inMilliseconds -
                (this.hours() * (60 * 60 * 1000))) -
            (this.minutes() * ((60 * 60 * 1000) ~/ 60))) ~/
        1000;
  }

  void updateTime() {
    timeToEndPromo = DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day, 21, 59, 59)
        .difference(DateTime.now());
  }
}
