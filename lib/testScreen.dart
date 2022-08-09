import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class testScreen extends StatelessWidget {
  const testScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: LayoutBuilder(
          builder: (context, constraints) {
            var height = constraints.maxHeight;
            var width = constraints.maxWidth;
            debugPrint("$height, $width");
            return SingleChildScrollView(
              
            );
          },
        ),
      ),
    );
  }
}
