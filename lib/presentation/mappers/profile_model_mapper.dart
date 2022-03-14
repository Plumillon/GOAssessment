import 'package:go_assessment/domain/entities/profile_entity.dart';
import 'package:go_assessment/presentation/models/profile_model.dart';
import 'package:go_assessment/utils/mapper.dart';

class ProfileModelMapper implements Mapper<ProfileEntity, ProfileModel> {
  @override
  ProfileModel mapFrom(ProfileEntity from) {
    return ProfileModel(
        id: from.id,
        username: from.username,
        fullname: from.fullname,
        phone: from.phone != null ? from.phone! : "",
        email: from.email != null ? from.email! : "",
        bio: from.bio != null ? from.bio! : "",
        // FIXME: hardcoded for demo purpose
        avatar:
            "https://dev.gamers.online/user/avatar?id=" + from.id.toString());
  }

  @override
  ProfileEntity mapTo(ProfileModel to) {
    throw UnimplementedError();
  }
}
