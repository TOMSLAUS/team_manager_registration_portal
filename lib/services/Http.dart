import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:team_manager_registration/Constants/Constants.dart';
import 'package:team_manager_registration/ui/widgets/CustomNotification.dart';

import '../i18n/strings.g.dart';

class Http {
  late final Dio api;

  Http(){
    api = Dio();
}

  Future<dynamic> get({required url, body, required context, Options? options}) async {
    Response response;
    Response? errorResponse;
    try {
      response = await api.get(Constants.api + url, queryParameters: body, options: options);
      return response;
    }
    on DioError catch (e) {
      errorResponse = e.response;
      print(e);
      try {
        //This gets called in case of error thrown from firebase
        String errorMessage = jsonDecode(
            jsonDecode(errorResponse.toString())["message"])["error"]["message"]
            .toString();
        CustomNotification.showError(context: context,
            description: errorMessage);
        return errorResponse;
      } on FormatException catch (e) {
        //This gets called in case of error thrown from spring boot
        CustomNotification.showError(context: context,
            description: jsonDecode(errorResponse.toString())["message"].toString());
        return errorResponse;
      }
      catch (e) {
        CustomNotification.showError(context: context,
            tDescription: t.errors.tryAgain);
      }
    }
  }

  Future<dynamic> putWithParams({required url, body, required context}) async {
    Response response;
    Response? errorResponse;
    try {
      response = await api.put(Constants.api + url, queryParameters: body);
      return response;
    }
    on DioError catch (e) {
      errorResponse = e.response;
      try {
        //This gets called in case of error thrown from firebase
        String errorMessage = jsonDecode(
            jsonDecode(errorResponse.toString())["message"])["error"]["message"]
            .toString();
        CustomNotification.showError(context: context,
            description: errorMessage);
        return errorResponse;
      } on FormatException catch (e) {
        //This gets called in case of error thrown from spring boot
        CustomNotification.showError(context: context,
            description: jsonDecode(errorResponse.toString())["message"].toString());
        return errorResponse;
      }
      catch (e) {
        CustomNotification.showError(context: context,
            tDescription: t.errors.tryAgain);
      }
    }
  }

  Future<dynamic> putWithBody({required url, body, required context}) async {
    Response response;
    Response? errorResponse;
    try {
      response = await api.put(Constants.api + url, data: body);
      return response;
    }
    on DioError catch (e) {
      print(e);
      errorResponse = e.response;
      try {
        //This gets called in case of error thrown from firebase
        String errorMessage = jsonDecode(
            jsonDecode(errorResponse.toString())["message"])["error"]["message"]
            .toString();
        CustomNotification.showError(context: context,
            description: errorMessage);
        return errorResponse;
      } on FormatException catch (e) {
        print(e);
        //This gets called in case of error thrown from spring boot
        CustomNotification.showError(context: context,
            description: jsonDecode(errorResponse.toString())["message"].toString());
        return errorResponse;
      }
      catch (e) {
        print(e);
        CustomNotification.showError(context: context,
            tDescription: t.errors.tryAgain);
      }
    }
  }

  postWithQuerryParameters({url, body, required context}) async {
    Response response;
    Response? errorResponse;
    try {
      response = await api.post(Constants.api + url, queryParameters: body);
      return response;
    }
    on DioError catch (e) {
      errorResponse = e.response;
      try {
        //This gets called in case of error thrown from firebase
        String errorMessage = jsonDecode(
            jsonDecode(errorResponse.toString())["message"])["error"]["message"]
            .toString();
        CustomNotification.showError(context: context,
            description: errorMessage);
        return errorResponse;
      } on FormatException catch (e) {
        print(jsonDecode(errorResponse.toString())["message"]);
        //This gets called in case of error thrown from spring boot
        CustomNotification.showError(context: context,
            description: jsonDecode(errorResponse.toString())["message"]);
        return errorResponse;
      }
      catch (e) {
        print(e);
        CustomNotification.showError(context: context,
            tDescription: t.errors.tryAgain);
      }
    }
  }

  postWithBody({required url, body, required context}) async {
    Response response;
    Response? errorResponse;
    try {
      response = await api.post(Constants.api + url, data: body);
      return response;
    }
    on DioError catch (e) {
      errorResponse = e.response;
      try {

        //This gets called in case of error thrown from firebase
        String errorMessage = jsonDecode(
            jsonDecode(errorResponse.toString())["message"])["error"]["message"]
            .toString();
        CustomNotification.showError(context: context,
            description: errorMessage);
        return errorResponse;
      } on FormatException catch (e) {
        print(e);
        //This gets called in case of error thrown from spring boot
        print(errorResponse.toString());
        CustomNotification.showError(context: context,
            description: jsonDecode(errorResponse.toString())["message"]);
        return errorResponse;
      }
      catch (e) {
        print(e);
        CustomNotification.showError(context: context,
            tDescription: t.errors.tryAgain);
      }
    }
  }
}