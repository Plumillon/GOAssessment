import 'package:go_assessment/presentation/di/injector.dart';
import 'package:logger/logger.dart';

Logger getLogger() {
  return getIt<Logger>();
}
