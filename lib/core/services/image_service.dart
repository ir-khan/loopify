import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

class ImageService {
  final ImagePicker _picker = ImagePicker();

  Future<List<String>> pickAndSaveImages({int maxImages = 5}) async {
    final List<XFile> pickedFiles = await _picker.pickMultiImage();
    if (pickedFiles.isEmpty) return [];

    final appDir = await getApplicationDocumentsDirectory();
    final savedPaths = <String>[];

    for (final file in pickedFiles.take(maxImages)) {
      final fileName =
          '${DateTime.now().millisecondsSinceEpoch}_${p.basename(file.path)}';
      final savedFile = await File(file.path).copy('${appDir.path}/$fileName');
      savedPaths.add(savedFile.path);
    }

    return savedPaths;
  }

  Future<void> deleteImage(String path) async {
    final file = File(path);
    if (await file.exists()) {
      await file.delete();
    }
  }
}
