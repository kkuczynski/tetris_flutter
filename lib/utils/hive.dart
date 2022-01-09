import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

Future<void> initHive() async {
  final appDocumentDir = await path_provider.getApplicationDocumentsDirectory();
  Hive..init(appDocumentDir.path);
}

Future<void> registerAdapter<T>(TypeAdapter<T> adapter) async {
  Hive..registerAdapter<T>(adapter);
}

Future<void> closeHive() async {
  await Hive.close();
}

Future<void> cleanHive() async {
  await Hive.deleteFromDisk();
}
