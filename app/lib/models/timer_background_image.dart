import 'dart:io';
import 'package:flutter/material.dart';
import 'package:jhanas/models/meditation_timer.dart';

@immutable
class BackgroundImage {
  final BackgroundImageType type;
  final String? customImage;

  const BackgroundImage({required this.type, this.customImage});

  const BackgroundImage.noImage() : this(type: BackgroundImageType.noImage);

  const BackgroundImage.userUploaded(String customImage)
      : this(type: BackgroundImageType.userUploaded, customImage: customImage);

  bool get isCustom => type == BackgroundImageType.userUploaded;
}

enum BackgroundImageType {
  noImage,
  clouds,
  foxMeditating,
  stormySkies,
  forest01,
  forest02,
  forest03,
  forest04,
  forest05,
  forest06,
  forest07,
  forest08,
  forest09,
  userUploaded,
}

extension TimerBackgroundImageExtension on BackgroundImageType {
  String get name {
    switch (this) {
      case BackgroundImageType.noImage:
        return 'No Background';
      case BackgroundImageType.clouds:
        return 'Clouds';
      case BackgroundImageType.foxMeditating:
        return 'Fox Meditating';
      case BackgroundImageType.stormySkies:
        return 'Stormy Skies';
      case BackgroundImageType.forest01:
        return 'Forest 1';
      case BackgroundImageType.forest02:
        return 'Forest 2';
      case BackgroundImageType.forest03:
        return 'Forest 3';
      case BackgroundImageType.forest04:
        return 'Forest 4';
      case BackgroundImageType.forest05:
        return 'Forest 5';
      case BackgroundImageType.forest06:
        return 'Forest 6';
      case BackgroundImageType.forest07:
        return 'Forest 7';
      case BackgroundImageType.forest08:
        return 'Forest 8';
      case BackgroundImageType.forest09:
        return 'Forest 9';
      case BackgroundImageType.userUploaded:
        return 'User Image';
    }
  }

  String? get asset {
    switch (this) {
      case BackgroundImageType.noImage:
        return null;
      case BackgroundImageType.clouds:
        return 'assets/images/background/clouds.jpg';
      case BackgroundImageType.foxMeditating:
        return 'assets/images/background/fox-meditating.jpg';
      case BackgroundImageType.stormySkies:
        return 'assets/images/background/stormy-skies.jpg';
      case BackgroundImageType.forest01:
        return 'assets/images/background/forest-01.jpg';
      case BackgroundImageType.forest02:
        return 'assets/images/background/forest-02.jpg';
      case BackgroundImageType.forest03:
        return 'assets/images/background/forest-03.jpg';
      case BackgroundImageType.forest04:
        return 'assets/images/background/forest-04.jpg';
      case BackgroundImageType.forest05:
        return 'assets/images/background/forest-05.jpg';
      case BackgroundImageType.forest06:
        return 'assets/images/background/forest-06.jpg';
      case BackgroundImageType.forest07:
        return 'assets/images/background/forest-07.jpg';
      case BackgroundImageType.forest08:
        return 'assets/images/background/forest-08.jpg';
      case BackgroundImageType.forest09:
        return 'assets/images/background/forest-09.jpg';
      case BackgroundImageType.userUploaded:
        return null;
    }
  }
}

DecorationImage? timerBackgroundImageWidget(MeditationTimer timer) {
  if (timer.backgroundImage == BackgroundImageType.noImage) {
    return null;
  }

  if (timer.backgroundImage == BackgroundImageType.userUploaded) {
    if (timer.customBackgroundImage != null) {
      final file = File(timer.customBackgroundImage!);
      if (!file.existsSync()) {
        return null;
      }
      return DecorationImage(
        image: FileImage(file),
        opacity: 0.3,
      );
    }
    return null;
  }

  final imageAsset = timer.backgroundImage.asset;
  if (imageAsset == null) {
    return null;
  }

  return DecorationImage(
    image: AssetImage(imageAsset),
    opacity: 0.3,
  );
}
