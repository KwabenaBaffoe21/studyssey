import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuildPage extends StatefulWidget {
  const BuildPage({
    super.key,
    required this.title,
    required this.imagePath,
    required this.width,
    required this.height,
    required this.vertical,
  });

  final String title, imagePath;
  final double width, height, vertical;

  @override
  State<BuildPage> createState() => _BuildPageState();
}

class _BuildPageState extends State<BuildPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.56),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.56, vertical: 25.56),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome to Studyssey',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.22),
                  child: SizedBox(
                    width: 300,
                    height: 93,
                    child: Text(
                      widget.title,
                      style: Theme.of(context).textTheme.titleLarge,
                      softWrap: true,

                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 394,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: widget.vertical),
              child: SvgPicture.asset(
                widget.imagePath,
                height: widget.height,
                width: widget.width,
              ),
            ),
          )
        ],
      ),
    );
  }
}
