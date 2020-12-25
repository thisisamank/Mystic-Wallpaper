import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

downloadImage(String url, String name) async {
  var status = await Permission.storage.request();
  final externalDir = await getExternalStorageDirectory();
  if (status.isGranted) {
    downloadImg(url, name, externalDir.path);
  } else if (status.isDenied) {
    status = await Permission.storage.request();
    downloadImg(url, name, externalDir.path);
  }
}

downloadImg(final url, final name, final path) async {
  final id = await FlutterDownloader.enqueue(
    url: url,
    savedDir: path,
    fileName: name,
    showNotification: true,
    openFileFromNotification: true,
  );
}
