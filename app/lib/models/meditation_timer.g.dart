// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meditation_timer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IntervalBellRepeat _$IntervalBellRepeatFromJson(Map<String, dynamic> json) =>
    IntervalBellRepeat(
      interval: json['interval'] as int,
      count: json['count'] as int,
    );

Map<String, dynamic> _$IntervalBellRepeatToJson(IntervalBellRepeat instance) =>
    <String, dynamic>{
      'interval': instance.interval,
      'count': instance.count,
    };

IntervalBell _$IntervalBellFromJson(Map<String, dynamic> json) => IntervalBell(
      bell: $enumDecode(_$BellEnumMap, json['bell']),
      bellCount: json['bellCount'] as int,
      interval: json['interval'] as int,
      position: $enumDecode(_$IntervalBellPositionEnumMap, json['position']),
      repeat: json['repeat'] == null
          ? null
          : IntervalBellRepeat.fromJson(json['repeat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntervalBellToJson(IntervalBell instance) =>
    <String, dynamic>{
      'bell': _$BellEnumMap[instance.bell]!,
      'bellCount': instance.bellCount,
      'interval': instance.interval,
      'position': _$IntervalBellPositionEnumMap[instance.position]!,
      'repeat': instance.repeat,
    };

const _$BellEnumMap = {
  Bell.noSound: 'noSound',
  Bell.vibration: 'vibration',
  Bell.woodBlock: 'woodBlock',
  Bell.bellBasu: 'bellBasu',
  Bell.bellDengze: 'bellDengze',
  Bell.bellGong: 'bellGong',
  Bell.bellKangse: 'bellKangse',
  Bell.bellOmbu: 'bellOmbu',
  Bell.bellSakya: 'bellSakya',
  Bell.bellShurong: 'bellShurong',
  Bell.bellZhada: 'bellZhada',
};

const _$IntervalBellPositionEnumMap = {
  IntervalBellPosition.fromStart: 'fromStart',
  IntervalBellPosition.fromEnd: 'fromEnd',
};

MeditationTimer _$MeditationTimerFromJson(Map<String, dynamic> json) =>
    MeditationTimer(
      duration: json['duration'] as int,
      ambientSound: $enumDecode(_$AmbientSoundEnumMap, json['ambientSound']),
      backgroundImage:
          $enumDecode(_$BackgroundImageTypeEnumMap, json['backgroundImage']),
      customBackgroundImage: json['customBackgroundImage'] as String?,
      startingBell: $enumDecode(_$BellEnumMap, json['startingBell']),
      startingBellCount: json['startingBellCount'] as int,
      endingBell: $enumDecode(_$BellEnumMap, json['endingBell']),
      endingBellCount: json['endingBellCount'] as int,
      warmUp: json['warmUp'] as int,
      intervalBells: (json['intervalBells'] as List<dynamic>)
          .map((e) => IntervalBell.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MeditationTimerToJson(MeditationTimer instance) =>
    <String, dynamic>{
      'duration': instance.duration,
      'ambientSound': _$AmbientSoundEnumMap[instance.ambientSound]!,
      'backgroundImage':
          _$BackgroundImageTypeEnumMap[instance.backgroundImage]!,
      'customBackgroundImage': instance.customBackgroundImage,
      'startingBell': _$BellEnumMap[instance.startingBell]!,
      'startingBellCount': instance.startingBellCount,
      'endingBell': _$BellEnumMap[instance.endingBell]!,
      'endingBellCount': instance.endingBellCount,
      'warmUp': instance.warmUp,
      'intervalBells': instance.intervalBells,
    };

const _$AmbientSoundEnumMap = {
  AmbientSound.noSound: 'noSound',
  AmbientSound.angelChoir: 'angelChoir',
  AmbientSound.birdsong: 'birdsong',
  AmbientSound.celticHarmony: 'celticHarmony',
  AmbientSound.crystalRainDrops: 'crystalRainDrops',
  AmbientSound.enchanting: 'enchanting',
  AmbientSound.eternalStream: 'eternalStream',
  AmbientSound.goldenOm: 'goldenOm',
  AmbientSound.intoTheWild: 'intoTheWild',
  AmbientSound.limitless: 'limitless',
  AmbientSound.lucidDream: 'lucidDream',
  AmbientSound.naturesMelody: 'naturesMelody',
  AmbientSound.nylonGuitar: 'nylonGuitar',
  AmbientSound.oceanWave: 'oceanWave',
  AmbientSound.pianoMoonlight: 'pianoMoonlight',
  AmbientSound.reflections: 'reflections',
  AmbientSound.secretGarden: 'secretGarden',
  AmbientSound.stillness: 'stillness',
  AmbientSound.tibetanSunrise: 'tibetanSunrise',
};

const _$BackgroundImageTypeEnumMap = {
  BackgroundImageType.noImage: 'noImage',
  BackgroundImageType.clouds: 'clouds',
  BackgroundImageType.foxMeditating: 'foxMeditating',
  BackgroundImageType.stormySkies: 'stormySkies',
  BackgroundImageType.forest01: 'forest01',
  BackgroundImageType.forest02: 'forest02',
  BackgroundImageType.forest03: 'forest03',
  BackgroundImageType.forest04: 'forest04',
  BackgroundImageType.forest05: 'forest05',
  BackgroundImageType.forest06: 'forest06',
  BackgroundImageType.forest07: 'forest07',
  BackgroundImageType.forest08: 'forest08',
  BackgroundImageType.forest09: 'forest09',
  BackgroundImageType.userUploaded: 'userUploaded',
};
