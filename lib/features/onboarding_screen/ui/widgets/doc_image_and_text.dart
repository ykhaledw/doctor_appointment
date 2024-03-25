import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/core/theming/styles.dart';

class DocImageAndText extends StatelessWidget {
  const DocImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svg/background_logo.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
              Colors.white,
              Colors.white.withOpacity(0.1),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: const [0.14,0.4],
            ),
          ),
          child: Image.asset('assets/images/doc_logo.png')
          ),
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Text('Best Doctor\nAppointment App',
            textAlign: TextAlign.center,
            style: TextStyles.font32BlueBold.copyWith(height: 1.4),
            ),
            ),

      ],
    );
  }
}