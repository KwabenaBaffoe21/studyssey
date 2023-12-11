import 'dart:io';
import 'package:flutter/services.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

void openFile(fileLink) async {
  String tempDir = (await getTemporaryDirectory()).path;
  String tempFilePath = '$tempDir/${DateTime.now().millisecondsSinceEpoch}';

  try {
    ByteData data = await rootBundle.load(fileLink);
    List<int> bytes = data.buffer.asUint8List();
    await File(tempFilePath).writeAsBytes(bytes);

    var result = await OpenFile.open(
      tempFilePath,
      type: 'text/plain',
    );

    if (result.type == ResultType.done) {
      print('File opened successfully');
    } else {
      print('We could not open the file');
    }
  } catch (e, stackTrace) {
    print('Error: $e');
    print('Stack trace: $stackTrace');
  }
}
