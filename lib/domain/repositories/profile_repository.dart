import 'package:go_assessment/domain/entities/profile_entity.dart';

abstract class ProfileRepository {
  Future<List<ProfileEntity>> getProfiles();
}
