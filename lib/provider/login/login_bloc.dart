import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<GetPhoneNo>((event, emit) async {
      // TODO: implement event handler
      try{
        var headers = {
          'Content-Type': 'application/x-www-form-urlencoded',
          '': '',
          'Cookie': 'JSESSIONID=EE412AABC98D89179CF40452B4BF0014'
        };
        var dio = Dio();
        var response = await dio.request(
          'https://cfapplication.aiims.edu/santusht/loginProcess?j_username=8750030780&j_password=e10adc3949ba59abbe56e057f20f883e&loginBy=password',
          options: Options(
            method: 'POST',
            headers: headers,
          ),
        );
        if (response.statusCode == 200) {
          print("data ${response.runtimeType}");
          print(json.encode(response.data));
        }
        else {
          print(response.statusMessage);
        }
      } catch(e){

      }
    });
  }
}
