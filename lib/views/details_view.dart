import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newweather/constants/colors.dart';
import 'package:newweather/cubits/get_wether_cubit.dart';
import 'package:newweather/models/weather_model.dart';
import 'package:newweather/widgets/cards_list_view.dart';
import 'package:newweather/widgets/custom_text.dart';
import 'package:newweather/widgets/my_container.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel =
        BlocProvider.of<GetWeatherCubit>(context).weatherModel!;
    return Scaffold(
        appBar: AppBar(
          title: const CustomText(
            'Forcasts',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          centerTitle: true,
          backgroundColor:  MyColors.mainColor,
          elevation: 0,
        ),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  end: Alignment.bottomCenter,
                  begin: Alignment.topCenter,
                  colors: [
                 MyColors.mainColor,
                 MyColors.mainColor.withOpacity(.6)
              ])),
          child: Column(
            children: [
              Mycontainter(weatherModel: weatherModel),
              CardsListView(weatherModel: weatherModel)
            ],
          ),
        ));
  }
}
