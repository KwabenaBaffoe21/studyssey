import 'package:flutter/material.dart';





class MySlider extends StatefulWidget {
  const MySlider({super.key});

  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  // Define the values for the slider
  List<int> values = [0, 233, 466];

  // Define the initial value for the slider
  int currentValue = 233;

  @override
  Widget build(BuildContext context) {
    return Slider(
      // Set the minimum value to the first element of the list
      min: values.first.toDouble(),
      // Set the maximum value to the last element of the list
      max: values.last.toDouble(),
      // Set the current value to the state variable
      value: currentValue.toDouble(),
      // Set the divisions to the length of the list minus one
      divisions: values.length - 1,
      // Set the labels to the string representation of the values
      label: currentValue.toString(),
      // Update the state variable when the slider is changed
      onChanged: (double value) {
        setState(() {
          currentValue = value.toInt();
        });
      },
    );
  }
}
