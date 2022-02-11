import 'package:icure_dart_sdk/util/functional_utils.dart';
import 'package:icure_medical_device_dart_sdk/mappers/user.dart';

import '../../api.dart';
import '../../medtech_api.dart';
import '../../mappers/filter.dart';
import '../../utils/functional_utils.dart';

import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';

class UserApiImpl extends UserApi {
  UserApiImpl(this.api);

  final MedTechApi api;
  final uuid = Uuid();

  @override
  Future<bool?> checkTokenValidity(String userId, String token) =>
      api.userApi.checkTokenValidity(userId, token);

  @override
  Future<User?> createOrModifyUser(User user) async =>
      (await (user.rev?.let((it) => api.userApi.modifyUser(user.toUserDto()) ) ?? api.userApi
            .createUser(user.toUserDto())))?.toUser();

  @override
  Future<String?> createToken(String userId) =>
      api.userApi.getToken(userId, uuid.v4(options: {'rng': UuidUtil.cryptoRNG}), tokenValidity: 3600 * 24 * 30);

  @override
  Future<String?> deleteUser(String userId) async =>
    (await api.userApi.deleteUser(userId))?.rev ?? throwFormatException("Invalid user id");


  @override
  Future<PaginatedListUser?> filterUsers(Filter filter, { String? nextUserId, int? limit, }) {
       return (api.userApi.filterUsersBy(FilterChain(filter.toAbstractFilterDto(), null), nextUserId, limit))
            .toPaginatedListUser()
  }

  @override
  Future<User?> getLoggedUser() async =>
      (await api.userApi.getCurrentUser())?.toUser();

  @override
  Future<User?> getUser(String userId) async =>
      (await api.userApi.getUser(userId))?.toUser();

  @override
  Future<List<String>?> matchUsers(Filter filter) =>
      api.userApi.matchUsersBy(filter.toAbstractFilterDto());

}