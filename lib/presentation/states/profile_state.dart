import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_assessment/presentation/models/profile_model.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = ProfileStateInitial;

  const factory ProfileState.loading() = ProfileStateLoading;

  const factory ProfileState.loaded({required List<ProfileModel> profiles}) =
      ProfileStateLoaded;
}
