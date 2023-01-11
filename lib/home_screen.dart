import 'package:flutter/material.dart';
import 'package:gradient_slide_to_act/gradient_slide_to_act.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gradient slide to act'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            GradientSlideToAct(
              width: 400,
              textStyle: const TextStyle(color: Colors.white,fontSize: 15),
              backgroundColor: const Color(0Xff172663),
              onSubmit: (){
                debugPrint("Submitted!");
              },
              gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xff0da6c2),
                    Color(0xff0E39C6),
                  ]
              ),
            ),
            const SizedBox(height: 10.0,),
            GradientSlideToAct(
              width: 400,
              dragableIcon: Icons.arrow_forward,
              textStyle: const TextStyle(color: Colors.white,fontSize: 15),
              backgroundColor: Colors.purple,
              onSubmit: (){},
              gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  colors: [
                    Colors.red,
                    Colors.purple
                  ]
              ),
            ),
            const SizedBox(height: 10.0,),
            GradientSlideToAct(
              width: 400,
              dragableIconBackgroundColor: Colors.greenAccent,
              textStyle: const TextStyle(color: Colors.white,fontSize: 15),
              backgroundColor: Colors.grey.shade200,
              onSubmit: (){},
              gradient:  const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0Xff11998E ),
                    Color(0Xff38EF7D),
                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
