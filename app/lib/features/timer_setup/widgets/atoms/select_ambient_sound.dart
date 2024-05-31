import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:jhanas/atoms/button_contained.dart';
import 'package:jhanas/atoms/button_outline.dart';
import 'package:jhanas/atoms/pull_down_indicator.dart';
import 'package:jhanas/models/ambient_sound.dart';
import 'package:just_audio/just_audio.dart';

const double imageFraction = 0.6;
const double imageScase = 0.8;
const double textFraction = 0.6;
const double textScase = 0.8;
const animationDuration = Duration(milliseconds: 300);

class AmbientSoundButton extends StatelessWidget {
  final String title;
  final AmbientSound ambientSound;
  final ValueChanged<AmbientSound> onChanged;

  const AmbientSoundButton({
    super.key,
    required this.title,
    required this.ambientSound,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonOutline(
      height: 40,
      child: AutoSizeText(
        '$title: ${ambientSoundName(ambientSound)}',
        minFontSize: 10,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        maxLines: 1,
      ),
      onPressed: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context) {
            return SelectAmbientSoundBottomSheet(
              title: title,
              ambientSound: ambientSound,
              valueChanged: onChanged,
            );
          },
        );
      },
    );
  }
}

class SelectAmbientSoundBottomSheet extends StatefulWidget {
  final String title;
  final AmbientSound ambientSound;
  final ValueChanged<AmbientSound> valueChanged;

  const SelectAmbientSoundBottomSheet({
    super.key,
    required this.title,
    required this.ambientSound,
    required this.valueChanged,
  });

  @override
  SelectAmbientSoundBottomSheetState createState() =>
      SelectAmbientSoundBottomSheetState();
}

class SelectAmbientSoundBottomSheetState
    extends State<SelectAmbientSoundBottomSheet> {
  late AudioPlayer _audioPlayer;

  PageController _imageController =
      PageController(viewportFraction: imageFraction, initialPage: 999);
  bool _isImageScrolling = false;

  PageController _textController =
      PageController(viewportFraction: textFraction, initialPage: 999);
  bool _isTextScrolling = false;

  int _activePage = 0;

  @override
  void initState() {
    _initialize();
    _activePage = AmbientSound.values.indexOf(widget.ambientSound);

    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _imageController.jumpToPage(999 * ambientSoundsCount + _activePage);
      _textController.jumpToPage(999 * ambientSoundsCount + _activePage);
    });
  }

  @override
  void reassemble() {
    _audioPlayer.dispose();
    _imageController.dispose();
    _textController.dispose();
    _initialize();
    super.reassemble();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    _imageController.dispose();
    _textController.dispose();
    super.dispose();
  }

  void _initialize() {
    _audioPlayer = AudioPlayer();

    _imageController =
        PageController(viewportFraction: imageFraction, initialPage: 999);
    _isImageScrolling = false;

    _textController =
        PageController(viewportFraction: textFraction, initialPage: 999);
    _isTextScrolling = false;

    _imageController.addListener(() {
      if (_isImageScrolling) {
        _textController.position.correctPixels(_imageController.offset *
            _textController.viewportFraction /
            _imageController.viewportFraction);
        _textController.position.notifyListeners();
      }
    });

    _textController.addListener(() {
      if (_isTextScrolling) {
        _imageController.position.correctPixels(_textController.offset *
            _imageController.viewportFraction /
            _textController.viewportFraction);
        _imageController.position.notifyListeners();
      }
    });
  }

  Future<void> _selectAmbientSound(int index) async {
    final soundIndex = index % ambientSoundsCount;

    setState(() {
      _activePage = soundIndex;
    });

    final AmbientSound ambientSound = AmbientSound.values[soundIndex];

    await _audioPlayer.stop();

    final sound = ambientSounds[ambientSound]!.sound;
    if (sound != null) {
      try {
        await _audioPlayer.setAsset(sound);
        await _audioPlayer.play();
      } catch (e) {
        if (kDebugMode) {
          print('Error loading audio ambientSound $ambientSound asset: $e');
        }
      }
    }
  }

  void _cancel() {
    Navigator.of(context).pop();
  }

  void _submit() {
    widget.valueChanged(AmbientSound.values[_activePage]);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        color: const Color.fromRGBO(36, 33, 43, 1),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const PullDownIndicator(),
                Container(
                  alignment: Alignment.topLeft,
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                  child: Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Color(0xffE6E1E5),
                    ),
                  ),
                ),
                const SizedBox(height: 13),
                SizedBox(
                  height: 200,
                  child: NotificationListener(
                    onNotification: (notification) {
                      if (notification is UserScrollNotification) {
                        if (notification.direction != ScrollDirection.idle) {
                          (_textController.position
                                  as ScrollPositionWithSingleContext)
                              .goIdle();
                          _isImageScrolling = true;
                          _isTextScrolling = false;
                        } else {
                          _isImageScrolling = false;
                        }
                      }
                      return false;
                    },
                    child: PageView.builder(
                      physics: const PageScrollPhysics(),
                      controller: _imageController,
                      onPageChanged: _selectAmbientSound,
                      // itemCount: widget.units.length,
                      itemBuilder: (context, index) => AnimatedScale(
                        scale: _activePage == index % ambientSoundsCount
                            ? 1
                            : imageScase,
                        duration: animationDuration,
                        child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child:
                                _ambientSoundImage(index % ambientSoundsCount),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  alignment: Alignment.center,
                  child: NotificationListener(
                    onNotification: (notification) {
                      if (notification is UserScrollNotification) {
                        if (notification.direction != ScrollDirection.idle) {
                          (_imageController.position
                                  as ScrollPositionWithSingleContext)
                              .goIdle();
                          _isTextScrolling = true;
                          _isImageScrolling = false;
                        } else {
                          _isTextScrolling = false;
                        }
                      }
                      return false;
                    },
                    child: PageView.builder(
                      physics: const PageScrollPhysics(),
                      controller: _textController,
                      onPageChanged: _selectAmbientSound,
                      // itemCount: widget.units.length,
                      itemBuilder: (context, index) => AnimatedScale(
                        scale: _activePage == index % ambientSoundsCount
                            ? 1
                            : textScase,
                        duration: animationDuration,
                        child: Center(
                          child: AutoSizeText(
                            ambientSounds.entries
                                .elementAt(index % ambientSoundsCount)
                                .value
                                .name,
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 18),
                            maxLines: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 22),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      flex: 5,
                      child: ButtonOutline(
                        height: 40,
                        child: const Text('Cancel'),
                        onPressed: () => _cancel(),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      flex: 5,
                      child: ButtonContained(
                        height: 40,
                        child: const Text('Save'),
                        onPressed: () => _submit(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 22),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _ambientSoundImage(int position) {
    final AmbientSound ambientSound = AmbientSound.values[position];

    if (ambientSound == AmbientSound.noSound) {
      return const Icon(Icons.volume_off_outlined, size: 200);
    }

    final image = ambientSounds.entries.elementAt(position).value.image;

    if (image == null) {
      return Container();
    }

    return Image.asset(
      image,
      fit: BoxFit.cover,
      height: 200,
    );
  }
}
