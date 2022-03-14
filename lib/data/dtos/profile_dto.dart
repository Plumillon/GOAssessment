import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_dto.freezed.dart';

part 'profile_dto.g.dart';

@freezed
class ProfileDTO with _$ProfileDTO {
  const factory ProfileDTO(
      {required int id,
      required String username,
      required String fullname,
      @Default("") String phone,
      @Default("") String email,
      @Default("") String bio}) = _ProfileDTO;

  factory ProfileDTO.fromJson(Map<String, dynamic> json) =>
      _$ProfileDTOFromJson(json);
}
