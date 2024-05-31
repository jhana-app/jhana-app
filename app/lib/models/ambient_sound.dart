enum AmbientSound {
  noSound,
  angelChoir,
  birdsong,
  celticHarmony,
  crystalRainDrops,
  enchanting,
  eternalStream,
  goldenOm,
  intoTheWild,
  limitless,
  lucidDream,
  naturesMelody,
  nylonGuitar,
  oceanWave,
  pianoMoonlight,
  reflections,
  secretGarden,
  stillness,
  tibetanSunrise,
}

final ambientSoundsCount = AmbientSound.values.length;

class AmbientSoundInfo {
  final String name;
  final String? sound;
  final String? image;

  AmbientSoundInfo({
    required this.name,
    this.sound,
    this.image,
  });
}

const noAmbientSound = 'assets/sounds/no_sound.mp3';

final Map<AmbientSound, AmbientSoundInfo> ambientSounds = {
  AmbientSound.noSound: AmbientSoundInfo(
    name: 'None',
  ),
  AmbientSound.angelChoir: AmbientSoundInfo(
    name: 'Angel Choir',
    sound: 'assets/sounds/ambient/angel_choir.mp3',
    image: 'assets/images/ambient/angel_choir.jpg',
  ),
  AmbientSound.birdsong: AmbientSoundInfo(
    name: 'Birdsong',
    sound: 'assets/sounds/ambient/birdsong.mp3',
    image: 'assets/images/ambient/birdsong.jpg',
  ),
  AmbientSound.celticHarmony: AmbientSoundInfo(
    name: 'Celtic Harmony',
    sound: 'assets/sounds/ambient/celtic_harmony.mp3',
    image: 'assets/images/ambient/celtic_harmony.jpg',
  ),
  AmbientSound.crystalRainDrops: AmbientSoundInfo(
    name: 'Crystal Rain Drops',
    sound: 'assets/sounds/ambient/crystal_rain_drops.mp3',
    image: 'assets/images/ambient/crystal_rain_drops.jpg',
  ),
  AmbientSound.enchanting: AmbientSoundInfo(
    name: 'Enchanting',
    sound: 'assets/sounds/ambient/enchanting.mp3',
    image: 'assets/images/ambient/enchanting.jpg',
  ),
  AmbientSound.eternalStream: AmbientSoundInfo(
    name: 'Eternal Stream',
    sound: 'assets/sounds/ambient/eternal_stream.mp3',
    image: 'assets/images/ambient/eternal_stream.jpg',
  ),
  AmbientSound.goldenOm: AmbientSoundInfo(
    name: 'Golden Om',
    sound: 'assets/sounds/ambient/golden_om.mp3',
    image: 'assets/images/ambient/golden_om.jpg',
  ),
  AmbientSound.intoTheWild: AmbientSoundInfo(
    name: 'Into The Wild',
    sound: 'assets/sounds/ambient/into_the_wild.mp3',
    image: 'assets/images/ambient/into_the_wild.jpg',
  ),
  AmbientSound.limitless: AmbientSoundInfo(
    name: 'Limitless',
    sound: 'assets/sounds/ambient/limitless.mp3',
    image: 'assets/images/ambient/limitless.jpg',
  ),
  AmbientSound.lucidDream: AmbientSoundInfo(
    name: 'Lucid Dream',
    sound: 'assets/sounds/ambient/lucid_dream.mp3',
    image: 'assets/images/ambient/lucid_dream.jpg',
  ),
  AmbientSound.naturesMelody: AmbientSoundInfo(
    name: 'Natures Melody',
    sound: 'assets/sounds/ambient/natures_melody.mp3',
    image: 'assets/images/ambient/natures_melody.jpg',
  ),
  AmbientSound.nylonGuitar: AmbientSoundInfo(
    name: 'Nylon Guitar',
    sound: 'assets/sounds/ambient/nylon_guitar.mp3',
    image: 'assets/images/ambient/nylon_guitar.jpg',
  ),
  AmbientSound.oceanWave: AmbientSoundInfo(
    name: 'Ocean Wave',
    sound: 'assets/sounds/ambient/ocean_wave.mp3',
    image: 'assets/images/ambient/ocean_wave.jpg',
  ),
  AmbientSound.pianoMoonlight: AmbientSoundInfo(
    name: 'Piano Moonlight',
    sound: 'assets/sounds/ambient/piano_moonlight.mp3',
    image: 'assets/images/ambient/piano_moonlight.jpg',
  ),
  AmbientSound.reflections: AmbientSoundInfo(
    name: 'Reflections',
    sound: 'assets/sounds/ambient/reflections.mp3',
    image: 'assets/images/ambient/reflections.jpg',
  ),
  AmbientSound.secretGarden: AmbientSoundInfo(
    name: 'Secret Garden',
    sound: 'assets/sounds/ambient/secret_garden.mp3',
    image: 'assets/images/ambient/secret_garden.jpg',
  ),
  AmbientSound.stillness: AmbientSoundInfo(
    name: 'Stillness',
    sound: 'assets/sounds/ambient/stillness.mp3',
    image: 'assets/images/ambient/stillness.jpg',
  ),
  AmbientSound.tibetanSunrise: AmbientSoundInfo(
    name: 'Tibetan Sunrise',
    sound: 'assets/sounds/ambient/tibetan_sunrise.mp3',
    image: 'assets/images/ambient/tibetan_sunrise.jpg',
  ),
};

String ambientSoundName(AmbientSound ambient) => ambientSounds[ambient]!.name;
