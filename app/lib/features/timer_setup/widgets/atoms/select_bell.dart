import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:jhanas/atoms/button_contained.dart';
import 'package:jhanas/atoms/button_outline.dart';
import 'package:jhanas/atoms/pull_down_indicator.dart';
import 'package:jhanas/models/bell.dart';
import 'package:just_audio/just_audio.dart';
import 'package:vibration/vibration.dart';

const double imageFraction = 0.6;
const double imageScase = 0.8;
const double textFraction = 0.6;
const double textScase = 0.8;
const animationDuration = Duration(milliseconds: 300);

class BellButton extends StatelessWidget {
  final String title;
  final Bell bell;
  final int count;
  final void Function(Bell bell, int count) onChanged;

  const BellButton({
    super.key,
    required this.title,
    required this.bell,
    required this.count,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonOutline(
      height: 40,
      child: AutoSizeText(
        '$title: ${bellName(bell)}${count > 1 ? ' x$count' : ''}',
        minFontSize: 10,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        maxLines: 1,
      ),
      onPressed: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context) {
            return SelectBellBottomSheet(
              title: title,
              bell: bell,
              count: count,
              onChanged: onChanged,
            );
          },
        );
      },
    );
  }
}

class SelectBellBottomSheet extends StatefulWidget {
  final String title;
  final Bell bell;
  final int count;
  final void Function(Bell bell, int count) onChanged;

  const SelectBellBottomSheet({
    super.key,
    required this.title,
    required this.bell,
    required this.count,
    required this.onChanged,
  });

  @override
  SelectBellBottomSheetState createState() => SelectBellBottomSheetState();
}

class SelectBellBottomSheetState extends State<SelectBellBottomSheet> {
  late AudioPlayer _audioPlayer;

  PageController _imageController =
      PageController(viewportFraction: imageFraction, initialPage: 999);
  bool _isImageScrolling = false;

  PageController _textController =
      PageController(viewportFraction: textFraction, initialPage: 999);
  bool _isTextScrolling = false;

  int _activePage = 0;
  int _count = 0;

  @override
  void initState() {
    _initialize();
    _activePage = Bell.values.indexOf(widget.bell);
    _count = widget.count;

    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _imageController.jumpToPage(999 * bellsCount + _activePage);
      _textController.jumpToPage(999 * bellsCount + _activePage);
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

  Future<void> _selectBell(int index) async {
    final bellIndex = index % bellsCount;

    setState(() {
      _activePage = bellIndex;
    });

    final Bell bell = Bell.values[bellIndex];

    await _audioPlayer.stop();

    if (bell == Bell.vibration) {
      if (await Vibration.hasVibrator() == true) {
        Vibration.vibrate();
      }
    } else if (bell != Bell.noSound) {
      final sound = bells[bell]!.sound;
      if (sound != null) {
        try {
          await _audioPlayer.setAsset(sound);
          await _audioPlayer.play();
        } catch (e) {
          if (kDebugMode) {
            print('Error loading audio bell $bell asset: $e');
          }
        }
      }
    }
  }

  void _selectCount(int value) {
    setState(() {
      _count = value;
    });
  }

  void _cancel() {
    Navigator.of(context).pop();
  }

  void _submit() {
    widget.onChanged(Bell.values[_activePage], _count);
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
                      onPageChanged: _selectBell,
                      itemBuilder: (context, index) => AnimatedScale(
                        scale:
                            _activePage == index % bellsCount ? 1 : imageScase,
                        duration: animationDuration,
                        child: Center(
                          child: _bellImage(index % bellsCount),
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
                      onPageChanged: _selectBell,
                      itemBuilder: (context, index) => AnimatedScale(
                        scale:
                            _activePage == index % bellsCount ? 1 : textScase,
                        duration: animationDuration,
                        child: Center(
                          child: AutoSizeText(
                            bells.entries
                                .elementAt(index % bellsCount)
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
                const SizedBox(height: 8),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _countButton(1),
                      const SizedBox(width: 22),
                      _countButton(2),
                      const SizedBox(width: 22),
                      _countButton(3),
                    ],
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

  Widget _bellImage(int position) {
    final Bell bell = Bell.values[position];

    if (bell == Bell.noSound) {
      return const Icon(Icons.volume_off_outlined, size: 200);
    }

    if (bell == Bell.vibration) {
      return const Icon(Icons.vibration, size: 200);
    }

    final image = bells.entries.elementAt(position).value.image;

    if (image == null) {
      return Container();
    }

    return Image.asset(
      image,
      fit: BoxFit.cover,
      height: 200,
    );
  }

  Widget _countButton(int value) {
    return SizedBox(
      width: 40,
      height: 40,
      child: value == _count
          ? ButtonContained(
              height: 40,
              padding: EdgeInsets.zero,
              child: Text('x$value'),
              onPressed: () {
                _selectCount(value);
              },
            )
          : ButtonOutline(
              height: 40,
              padding: EdgeInsets.zero,
              child: Text('x$value'),
              onPressed: () {
                _selectCount(value);
              },
            ),
    );
  }
}
