import '../../config/api.dart';

import '../../shared/models/user_model.dart';
import '../../shared/models/user_service_model.dart';
import 'http_client.dart';

class UserService implements IUserService {
  final IHttpClient client;
  final baseUrl = baseUrls['apiBase'];

  UserService(this.client);

  @override
  Future<UserModel> updateUser(dynamic data) async {
    final response = await client.put('$baseUrl/user/update', data);
    final userData = UserModel.fromJson(response);
    return userData;
  }
}
