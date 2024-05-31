import 'dart:io';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jhanas/atoms/button_contained.dart';
import 'package:jhanas/atoms/button_outline.dart';
import 'package:jhanas/atoms/pull_down_indicator.dart';
import 'package:jhanas/features/timer_setup/widgets/atoms/background_image_controller.dart';
import 'package:jhanas/models/timer_background_image.dart';

typedef ImageChanged = Function(BackgroundImage image);

const double imageFraction = 0.55;
const double imageScase = 0.8;
const double textFraction = 0.6;
const double textScase = 0.8;
const animationDuration = Duration(milliseconds: 300);

class BackgroundImageButton extends StatefulWidget {
  final String title;
  final BackgroundImage image;
  final ImageChanged onChanged;

  const BackgroundImageButton({
    super.key,
    required this.title,
    required this.image,
    required this.onChanged,
  });

  @override
  State<BackgroundImageButton> createState() => _BackgroundImageButtonState();
}

class _BackgroundImageButtonState extends State<BackgroundImageButton> {
  late final BackgroundImagesController _imagesController;

  @override
  void initState() {
    super.initState();
    _imagesController = BackgroundImagesController();
  }

  Future<void> _showModal() async {
    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return SelectBackgroundImageBottomSheet(
          controller: _imagesController,
          title: widget.title,
          image: widget.image,
          valueChanged: widget.onChanged,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ButtonOutline(
      height: 40,
      onPressed: _showModal,
      child: AutoSizeText(
        widget.image.type.name,
        minFontSize: 10,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        maxLines: 1,
      ),
    );
  }
}

class SelectBackgroundImageBottomSheet extends StatefulWidget {
  final BackgroundImagesController controller;
  final String title;
  final BackgroundImage image;
  final ImageChanged valueChanged;

  const SelectBackgroundImageBottomSheet({
    super.key,
    required this.controller,
    required this.title,
    required this.image,
    required this.valueChanged,
  });

  @override
  SelectBackgroundImageBottomSheetState createState() =>
      SelectBackgroundImageBottomSheetState();
}

class SelectBackgroundImageBottomSheetState
    extends State<SelectBackgroundImageBottomSheet> {
  final _picker = ImagePicker();

  PageController _imageController =
      PageController(viewportFraction: imageFraction, initialPage: 999);
  bool _isImageScrolling = false;

  PageController _textController =
      PageController(viewportFraction: textFraction, initialPage: 999);
  bool _isTextScrolling = false;

  late int active = widget.controller.getIndex(widget.image);

  @override
  void initState() {
    super.initState();

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

    WidgetsBinding.instance.addPostFrameCallback((_) => _jumpToActivePage());
  }

  @override
  void dispose() {
    _imageController.dispose();
    _textController.dispose();
    super.dispose();
  }

  void _jumpToActivePage() {
    final page = 999 * widget.controller.images.length + active;
    _imageController.jumpToPage(page);
    _textController.jumpToPage(page);
  }

  void _selectImage(int index) {
    if (widget.controller.images.isNotEmpty) {
      setState(() => active = index % widget.controller.images.length);
    }
  }

  Future<void> _uploadImage() async {
    final image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      final newFile = await widget.controller.addImage(image.path);
      if (newFile != null) {
        final newImage = BackgroundImage.userUploaded(newFile);
        setState(() => active = widget.controller.getIndex(newImage));
        _jumpToActivePage();
      }
    }
  }

  Future<void> _deleteImage() async {
    await widget.controller.removeImage(active);
    setState(
      () => active = active.clamp(0, widget.controller.images.length - 1),
    );
    _jumpToActivePage();
  }

  void _onChange() {
    final activeImage = widget.controller.images.elementAt(active);
    widget.valueChanged(BackgroundImage(
      type: activeImage.type,
      customImage: activeImage.type == BackgroundImageType.userUploaded
          ? activeImage.customImage
          : '', // empty string for set custom image to null
    ));
  }

  void _cancel() {
    Navigator.of(context).pop();
  }

  void _submit() {
    _onChange();
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: const Color.fromRGBO(36, 33, 43, 1),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const PullDownIndicator(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(
                          widget.title,
                          style: const TextStyle(
                            fontSize: 24,
                            color: Color(0xffE6E1E5),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: IconButton(
                          onPressed: _uploadImage,
                          icon: const Icon(Icons.add),
                        ),
                      ),
                    ],
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
                      onPageChanged: _selectImage,
                      // itemCount: widget.units.length,
                      itemBuilder: (context, index) => AnimatedScale(
                        scale: active == index % widget.controller.images.length
                            ? 1
                            : imageScase,
                        duration: animationDuration,
                        child: _image(index, active),
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
                      onPageChanged: _selectImage,
                      // itemCount: widget.units.length,
                      itemBuilder: (context, index) => AnimatedScale(
                        scale: active == index % widget.controller.images.length
                            ? 1
                            : textScase,
                        duration: animationDuration,
                        child: Center(
                          child: _imageTitle(index),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 22),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
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
                ),
                const SizedBox(height: 22),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _image(int position, int active) {
    if (widget.controller.images.isEmpty) {
      return Container();
    }

    final index = position % widget.controller.images.length;
    final backgroundImage = widget.controller.images.elementAt(index);

    if (backgroundImage.type == BackgroundImageType.noImage) {
      return const Icon(Icons.block, size: 200);
    }

    final imageWidget = backgroundImage.isCustom
        ? Image.file(
            File(backgroundImage.customImage!),
            fit: BoxFit.cover,
            height: 200,
          )
        : Image.asset(
            backgroundImage.type.asset!,
            fit: BoxFit.cover,
            height: 200,
          );

    return Stack(
      alignment: Alignment.topCenter,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: imageWidget,
        ),
        if (backgroundImage.type == BackgroundImageType.userUploaded &&
            index == active)
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: _deleteImage,
              icon: const Icon(Icons.close),
            ),
          ),
      ],
    );
  }

  Widget _imageTitle(int position) {
    if (widget.controller.images.isEmpty) {
      return Container();
    }

    final index = position % widget.controller.images.length;
    final backgroundImage = widget.controller.images.elementAt(index);

    return AutoSizeText(
      backgroundImage.type.name,
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 18),
      maxLines: 1,
    );
  }
}
