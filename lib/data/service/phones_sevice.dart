import 'package:dio/dio.dart';
import 'package:phones/core/config/dio_catch_er_config.dart';
import 'package:phones/core/config/dio_config.dart';
import 'package:phones/data/model/phones_model.dart';

class PhonesService {
  static Future<dynamic> getPhones({required String url}) async {
    try {
      Response response = await DioConfig.createRequest().get(url);
      if (response.statusCode == 200) {
        return (response.data as List).map((e) => PhonesModel.fromJson(e)).toList();
      } else {
        return response.statusMessage.toString();
      }
    } on DioError catch (e) {
      return DioCatchError.catchError(e);
    }
  }
}
