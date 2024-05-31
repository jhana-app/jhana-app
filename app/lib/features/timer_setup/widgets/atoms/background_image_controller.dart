import 'dart:io';
import 'package:crypto/crypto.dart';
import 'package:jhanas/models/timer_background_image.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

class BackgroundImagesController {
  List<BackgroundImage> images = [];

  BackgroundImagesController() {
    init();
  }

  Future<void> init() async {
    final resultImages = BackgroundImageType.values
        .where((i) => i != BackgroundImageType.userUploaded)
        .map((i) => BackgroundImage(type: i))
        .toList();

    final dir = Directory(await _directory());
    if (dir.existsSync()) {
      final fileList = dir.listSync();

      final mtimes = <String, DateTime>{
        for (final f in fileList) f.path: f.statSync().modified,
      };

      fileList.sort(
        (a, b) => mtimes[a.path]!.compareTo(mtimes[b.path]!),
      );

      for (final file in dir.listSync()) {
        resultImages.add(BackgroundImage.userUploaded(file.path));
      }
    }

    images = resultImages;
  }

  int getIndex(BackgroundImage image) {
    var validatedImage = image;
    if (validatedImage.isCustom && validatedImage.customImage == null) {
      validatedImage = const BackgroundImage.noImage();
    }

    var index = 0;

    for (final img in images) {
      if (validatedImage.isCustom) {
        if (img.isCustom && img.customImage == validatedImage.customImage) {
          index = images.indexOf(img);
          break;
        }
      } else if (img.type == validatedImage.type) {
        index = images.indexOf(img);
        break;
      }
    }

    return index;
  }

  Future<String?> addImage(String path) async {
    final sourceFile = File(path);
    if (!sourceFile.existsSync()) {
      return null;
    }

    final stream = sourceFile.openRead();
    final hash = await md5.bind(stream).first;
    final destFile = '${hash.toString()}${p.extension(path)}';

    final dir = await _directory();
    final destPath = p.join(dir, destFile);

    if (File(destPath).existsSync()) {
      await sourceFile.delete();
    } else {
      await sourceFile.rename(destPath);

      await File(destPath).setLastModified(DateTime.now());

      images.add(BackgroundImage.userUploaded(destPath));
    }

    return destPath;
  }

  Future<void> removeImage(int index) async {
    if (index < 0 || index > images.length - 1) {
      return;
    }

    final image = images[index];
    if (!image.isCustom) {
      return;
    }

    final file = File(image.customImage!);
    if (file.existsSync()) {
      await file.delete();
    }

    images.removeAt(index);
  }

  Future<String> _directory() async {
    final appDir = await getApplicationDocumentsDirectory();
    final dirName = p.join(appDir.path, 'images', 'background');
    final dir = await Directory(dirName).create(recursive: true);
    return dir.path;
  }
}
