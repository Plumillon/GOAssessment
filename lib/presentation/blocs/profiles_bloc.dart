import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_assessment/domain/use_cases/get_profiles_use_case.dart';
import 'package:go_assessment/presentation/events/profile_event.dart';
import 'package:go_assessment/presentation/mappers/profile_model_mapper.dart';
import 'package:go_assessment/presentation/states/profile_state.dart';
import 'package:go_assessment/utils/logger.dart';
import 'package:go_assessment/utils/stubs.dart';

class ProfilesBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetProfilesUseCase _getProfilesUseCase;
  final ProfileModelMapper _profileModelMapper;

  /// BloC to handle profiles list interaction and data
  /// Data are stubbed on this level
  ProfilesBloc(this._getProfilesUseCase, this._profileModelMapper)
      : super(const ProfileState.initial()) {
    on<ProfileEventLoad>((_, emit) async {
      emit(const ProfileState.loading());

      var profiles = await _getProfilesUseCase.execute().then((profiles) =>
          profiles.map((item) => _profileModelMapper.mapFrom(item)));

      // Stub it
      // emit(ProfileState.loaded(profiles: profiles.toList()));
      emit(ProfileState.loaded(profiles: Stubs.stubProfiles()));
    });
  }
}
