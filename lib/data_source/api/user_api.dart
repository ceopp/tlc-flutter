import 'package:dio/dio.dart';
import 'package:superstarteam/repository/local_repository/local_repository.dart';
import 'package:superstarteam/utils/utils.dart';

class UserApi with SendWithToastMixin {
  UserApi();

  final Dio _client = Static.dio();

  final token = LocalRepository.getToken;

  // Future<User> getUser() async {
  //   // final response = await _client.post(
  //   //   'api/edit_user',
  //   //   options: Options(headers: {'Authorization': token}),
  //   //   data: data,
  //   // );
  //   // return response;
  //   await Future.delayed(const Duration(seconds: 1));
  //   return User.mock();
  // }
}
