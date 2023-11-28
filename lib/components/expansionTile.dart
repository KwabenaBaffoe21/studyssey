import 'package:flutter/material.dart';
import 'package:studyssey/components/pdf.dart';

import '../utilize/styles.dart';

class TextExpansionPanel extends StatefulWidget {
  final String title;
  final String text;

  const TextExpansionPanel({
    required this.title,
    required this.text,
    super.key,
  });

  @override
  _TextExpansionPanelState createState() => _TextExpansionPanelState();
}

class _TextExpansionPanelState extends State<TextExpansionPanel> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            child: Container(
              color: const Color(0xFFF2F3F5),
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      widget.title,
                      style: heading400reg,
                    ),
                  ),
                  Icon(
                    _isExpanded ? Icons.expand_less : Icons.expand_more,
                    size: 30.0,
                  ),
                ],
              ),
            ),
          ),
        ),
        AnimatedCrossFade(
          duration: const Duration(milliseconds: 300),
          firstChild: Container(),
          secondChild: Material(
            color: Colors.transparent,
            child: Container(
              width: 323,
              //height: 191,
              padding: const EdgeInsets.symmetric(horizontal: 11.11, vertical: 10),
              decoration: ShapeDecoration(
                color: const Color(0xFFF2F3F5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3.33),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 290,
                    padding:  const EdgeInsets.only(top: 1, bottom: 11),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 267,
                          child: Text(
                            widget.text,
                            style: body,
                          ),
                        ),
                      ],
                    ),
                  ),


                       const Padding(
                         padding: EdgeInsets.all(8.0),
                         child: Column(

                           children: [
                             Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                FileOpener(
                                  fileIcon: 'images/assets/svg/pdf-svgrepo-com.svg',
                                  filename: 'Introduction to Java GUI Programming',
                                  fileLink: 'images/assets/Lect01_ComputerFundamentals.pdf',
                                ),
                              ],
                      ),

                             Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FileOpener(
                                  fileIcon: 'images/assets/svg/zip.svg',
                                  filename: 'GUI Code Archive',
                                  fileLink: 'images/assets/resources/readme.zip',
                                ),
                              ],
                      ),
                           ],
                         ),
                       ),
                  const SizedBox( height: 10,)

                ],
              ),
            ),
          ),
          crossFadeState: _isExpanded ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        ),
      ],
    );
  }
}
