import 'package:ecommerce_elevate/features/home/presentation/view_model/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewModel extends Cubit<HomeStates>{
  HomeViewModel() : super(HomeInitialState());

}