import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newweather/cubits/get_weather_states.dart';
import 'package:newweather/models/weather_model.dart';
import 'package:newweather/services/weather_services.dart';

class GetWeatherCubit extends Cubit<WeatherStates> {
  GetWeatherCubit() : super(WeatherIntialState());
  WeatherModel? weatherModel;
  getWether({required String cityName}) async {
    try {
      weatherModel = await WeatherServices().getWeather(cityName: cityName);
      emit(WeatherLoadedState());
    } catch (e) {
      weatherModel = null;
      emit(FaliureState());
    }
  }
}
