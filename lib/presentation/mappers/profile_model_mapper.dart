import 'package:go_assessment/domain/entities/profile_entity.dart';
import 'package:go_assessment/presentation/models/profile_model.dart';
import 'package:go_assessment/utils/mapper.dart';

class ProfileModelMapper implements Mapper<ProfileEntity, ProfileModel> {
  @override
  ProfileModel mapFrom(ProfileEntity from) {
    return ProfileModel(name: from.name, avatar: from.avatar);
  }

  @override
  ProfileEntity mapTo(ProfileModel to) {
    throw UnimplementedError();
  }
}
