import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

downloadImage(String url, String name) async {
  final status = await Permission.storage.request();
  if (status.isGranted) {
    final externalDir = await getExternalStorageDirectory();

    final id = await FlutterDownloader.enqueue(
      url: url,
      savedDir: externalDir.path,
      fileName: name,
      showNotification: true,
      openFileFromNotification: true,
    );
  }
}
