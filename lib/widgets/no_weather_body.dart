import 'package:flutter/material.dart';
import 'package:newweather/constants/assets.dart';
import 'package:newweather/widgets/custom_text.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(Assets.assetsImagesNoWeather),
          const CustomText(
            'There is no weather',
            color: Colors.black,
          ),
          const CustomText(
            '    Start searching now 🔍 !',
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
