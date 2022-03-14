import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:go_assessment/data/dtos/profile_dto.dart';
import 'package:go_assessment/data/mappers/profile_dto_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProfileDataSource {
  final Dio _dio;
  final ProfileDTOMapper _mapper;

  ProfileDataSource(this._dio, this._mapper);

  Future<List<ProfileDTO>> get profiles =>
      _dio.get("/user/all").then((response) {
        if (response.statusCode == 200) {
          var json = jsonDecode(response.data);

          if (json is List) {
            return json.map((profile) => _mapper.mapFrom(profile)).toList();
          }
        }

        // TODO: implements specific error
        throw Exception();
      });
}
