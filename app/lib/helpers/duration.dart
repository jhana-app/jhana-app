class TimerDuration {
  final int hours;
  final int minutes;
  final int seconds;

  TimerDuration({
    this.hours = 0,
    this.minutes = 0,
    this.seconds = 0,
  });

  String hoursStr() => hours > 0 ? hours.toString() : '';
  String minutesStr() => hours > 0 ? _twoDigits(minutes) : minutes.toString();
  String secondsStr() => _twoDigits(seconds);
}

String _twoDigits(int n) => n.toString().padLeft(2, '0');

String formatDuration(Duration duration) {
  final List<String> res = [];

  final int hours = duration.inHours;
  if (hours > 0) {
    res.add(hours.toString());
  }

  final int minutes = duration.inMinutes.remainder(60);
  res.add(hours > 0 ? _twoDigits(minutes) : minutes.toString());

  final int seconds = duration.inSeconds.remainder(60);
  res.add(_twoDigits(seconds));

  return res.join(':');
}

TimerDuration parseDuration(Duration duration) => TimerDuration(
      hours: duration.inHours,
      minutes: duration.inMinutes.remainder(60),
      seconds: duration.inSeconds.remainder(60),
    );

String formatDurationHuman(Duration duration, {bool withSeconds = true}) {
  final List<String> res = [];

  final int hours = duration.inHours;
  int minutes = duration.inMinutes.remainder(60);
  final int seconds = duration.inSeconds.remainder(60);

  if (!withSeconds) {
    minutes = ((minutes * 60 + seconds).toDouble() / 60).round();
  }

  if (hours > 0) {
    if (minutes > 0 || seconds > 0) {
      res.add('${hours}h');
    } else {
      if (hours == 1) {
        res.add('1 hour');
      } else {
        res.add('$hours hours');
      }
    }
  }

  if (minutes > 0) {
    if (hours > 0 || seconds > 0) {
      res.add('${minutes}m');
    } else {
      if (minutes == 1) {
        res.add('1 minute');
      } else {
        res.add('$minutes minutes');
      }
    }
  }

  if (withSeconds && seconds > 0) {
    if (hours > 0) {
      // do nothing: we don't want to show seconds if there are hours
    } else if (minutes > 0) {
      res.add('${seconds}s');
    } else {
      if (seconds == 1) {
        res.add('1 second');
      } else {
        res.add('$seconds seconds');
      }
    }
  }

  return res.join(' ');
}

String formatDurationHumanMedium(Duration duration) {
  final List<String> res = [];

  final int seconds = duration.inSeconds.remainder(60);
  final int minutes =
      ((duration.inMinutes.remainder(60) * 60 + seconds).toDouble() / 60)
          .round();
  final int hours = duration.inHours;

  if (hours > 0) {
    if (minutes > 0) {
      res.add('$hours hr');
    } else {
      if (hours == 1) {
        res.add('1 hour');
      } else {
        res.add('$hours hours');
      }
    }
  }

  if (minutes > 0) {
    if (hours > 0) {
      res.add('$minutes min');
    } else {
      if (minutes == 1) {
        res.add('1 min');
      } else {
        res.add('$minutes min');
      }
    }
  }

  return res.join(' ');
}
