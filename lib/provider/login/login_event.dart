part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}
class GetPhoneNo extends LoginEvent{
  int phone;

  GetPhoneNo({ required this.phone});
}