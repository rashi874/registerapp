import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:register_app/model/create_model.dart';

class CreatService {
  Future<String?> adddetails(CreateModel model) async {
    Dio dio = Dio();
    try {
      log("try");
      final Response response = await dio.post(
        "https://test.krishivikas.com/api/regdata",
        data: model.toJson(),
      );
      log('hoi');
      if (response.statusCode == 201 || response.statusCode == 200) {
        final String result = response.data['message'];
        log(result.toString());
        return result;
      }
    } on DioError catch (e) {
      // AppExceptions.errorHandler(e);
      log(e.message.toString());
    }
    return null;
  }
}
