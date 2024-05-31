enum Bell {
  noSound,
  vibration,
  woodBlock,
  bellBasu,
  bellDengze,
  bellGong,
  bellKangse,
  bellOmbu,
  bellSakya,
  bellShurong,
  bellZhada,
}

final bellsCount = Bell.values.length;

class BellInfo {
  final String name;
  final String? image;
  final String? sound;
  final Duration? repeatInterval;

  BellInfo({
    required this.name,
    this.sound,
    this.image,
    this.repeatInterval,
  });
}

final Map<Bell, BellInfo> bells = {
  Bell.noSound: BellInfo(
    name: 'None',
  ),
  Bell.vibration: BellInfo(
    name: 'Vibration',
    repeatInterval: const Duration(seconds: 3),
  ),
  Bell.woodBlock: BellInfo(
    name: 'Wood block',
    image: 'assets/images/bells/wood_block.png',
    sound: 'assets/sounds/bells/wood_block.mp3',
    repeatInterval: const Duration(seconds: 3),
  ),
  Bell.bellBasu: BellInfo(
    name: 'Basu',
    image: 'assets/images/bells/bell_basu.png',
    sound: 'assets/sounds/bells/bell_basu.mp3',
    repeatInterval: const Duration(seconds: 3),
  ),
  Bell.bellDengze: BellInfo(
    name: 'Dengze',
    image: 'assets/images/bells/bell_dengze.png',
    sound: 'assets/sounds/bells/bell_dengze.mp3',
    repeatInterval: const Duration(seconds: 3),
  ),
  Bell.bellGong: BellInfo(
    name: 'Gong',
    image: 'assets/images/bells/bell_gong.png',
    sound: 'assets/sounds/bells/bell_gong.mp3',
    repeatInterval: const Duration(seconds: 3),
  ),
  Bell.bellKangse: BellInfo(
    name: 'Kangse',
    image: 'assets/images/bells/bell_kangse.png',
    sound: 'assets/sounds/bells/bell_kangse.mp3',
    repeatInterval: const Duration(seconds: 3),
  ),
  Bell.bellOmbu: BellInfo(
    name: 'Ombu',
    image: 'assets/images/bells/bell_ombu.png',
    sound: 'assets/sounds/bells/bell_ombu.mp3',
    repeatInterval: const Duration(seconds: 3),
  ),
  Bell.bellSakya: BellInfo(
    name: 'Sakya',
    image: 'assets/images/bells/bell_sakya.png',
    sound: 'assets/sounds/bells/bell_sakya.mp3',
    repeatInterval: const Duration(seconds: 3),
  ),
  Bell.bellShurong: BellInfo(
    name: 'Shurong',
    image: 'assets/images/bells/bell_shurong.png',
    sound: 'assets/sounds/bells/bell_shurong.mp3',
    repeatInterval: const Duration(seconds: 3),
  ),
  Bell.bellZhada: BellInfo(
    name: 'Zhada',
    image: 'assets/images/bells/bell_zhada.png',
    sound: 'assets/sounds/bells/bell_zhada.mp3',
    repeatInterval: const Duration(seconds: 3),
  ),
};

String bellName(Bell bell) => bells[bell]!.name;
