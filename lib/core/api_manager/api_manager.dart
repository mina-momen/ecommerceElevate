import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../config/constants.dart';

@singleton
class ApiManager {
  Dio dio = Dio(
    BaseOptions(
      baseUrl: AppConstants.BASE_URL,
    ),
  );

  Future<void> getData({required String endPoint}) async {
    try {

      final response = await dio.get('endPoint');
print(response.data);
    } on DioException catch(err){
      print("Error: ${err.message}");
    }

  }
}
