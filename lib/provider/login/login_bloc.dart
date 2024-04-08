// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<GetPhoneNo>((event, emit) async {
      // TODO: implement event handler
      emit(LoginLoading());
      try{
        var headers = {
          'Content-Type': 'application/x-www-form-urlencoded',
          '': ''
        };
        var dio = Dio();
        var response = await dio.request(
          'https://cfapplication.aiims.edu/santusht/loginProcess?j_username=8750030780&j_password=e10adc3949ba59abbe56e057f20f883e&loginBy=password',
          options: Options(
            method: 'POST',
            headers: headers,
          ),
        ).timeout(Duration(seconds: 15));

        if (response.statusCode == 200) {
          log(json.encode(response.data));
          emit(LoginSuccess());
        }
        else {
          log("response.statusMessage");
        }
      } catch(e){
log("e $e");
      }
    });
    on<SentOtp>((event, emit) async {
    emit(LoginLoading());
      try{
        var headers = {
          'Content-Type': 'application/json',
        };
        var data = json.encode({
          "username": event.phone
        });
        var dio = Dio();
        var response = await dio.request(
          'https://cfapplication.aiims.edu/santusht/otp_auth',
          options: Options(
            method: 'POST',
            headers: headers,
          ),
          data: data,
        ).timeout(Duration(seconds: 15));

        if (response.statusCode == 200) {
          log(json.encode(response.data));
        }
        else {
          log("${response.statusMessage}");
        }
      }catch(e){
       log("e $e");
      }

    });
  }
}
