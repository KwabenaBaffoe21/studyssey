import 'package:document_viewer/document_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utilize/styles.dart';

class FileOpener extends StatelessWidget {
  final String filename;
  final String fileIcon;
  final String fileLink;

  const FileOpener({
    required this.fileIcon,
    required this.filename,
    required this.fileLink,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //OpenFilex.open(fileLink);
        DocumentViewer(filePath: fileLink);
      },

      child: Material(
        color: Colors.transparent,
        child: Column(
          children: [
            SizedBox(
              //width: 280,
              height: 19.21,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 19,
                    height: 19,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(),
                    child: SvgPicture.asset(
                      fileIcon,
                    ),
                  ),
                  const SizedBox(width: 5.56),
                  Text(filename, style: heading300),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
