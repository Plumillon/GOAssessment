import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:go_assessment/data/repositories/profile_repository_impl.dart';
import 'package:go_assessment/domain/repositories/profile_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import 'injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true,
  asExtension: false, // default
)
GetIt configureInjection() => $initGetIt(getIt);

@module
abstract class AppModule {
  @lazySingleton
  Logger get logger => Logger(
        printer: PrettyPrinter(
            methodCount: 2,
            // number of method calls to be displayed
            errorMethodCount: 8,
            // number of method calls if stacktrace is provided
            lineLength: 220,
            // width of the output
            colors: true,
            // Colorful log messages
            printEmojis: true,
            // Print an emoji for each log message
            printTime: true // Should each log print contain a timestamp
            ),
      );
}

@module
abstract class NetworkModule {
  // FIXME: headers hardcoded for testing purpose
  @lazySingleton
  Dio get dio {
    var options = BaseOptions(
        baseUrl: 'https://dev.gamers.online',
        connectTimeout: 5000,
        receiveTimeout: 3000,
        headers: {
          "Auth-Token": "14c64d860659104e2dd196315eee43f9170436c533202f568bf27"
        });

    return Dio(options);
  }
}

@module
abstract class RepositoriesModule {
  @lazySingleton
  ProfileRepository profileRepository(
          ProfileRepositoryImpl profileRepositoryImpl) =>
      profileRepositoryImpl;
}
