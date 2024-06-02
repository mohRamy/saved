import 'package:get/get.dart';
import '../../constants/app_api_error.dart';

import '../../constants/app_enums.dart';
import '../../errors/failures.dart';
import '../../services/easy_loader_service.dart';
import 'api_error_handler.dart';

StateType getStateFromFailure(Failure failure) {
  if (failure is OfflineFailure) {
    return StateType.offline;
  } else if (failure is UnAuthenticatedFailure) {
    EasyLoaderService.showError(
      message: ApiErrors.forbidden.tr,
      durationSeconds: 5,
    );
    return StateType.forbidden;
  } else if (failure is UnAuthorizedFailure) {
    EasyLoaderService.showError(
      message: ApiErrors.unauthorized.tr,
      durationSeconds: 5,
    );
    return StateType.unAuthorized;
  } else if (failure is NotFoundFailure) {
    EasyLoaderService.showError(
      message: ApiErrors.notFound.tr,
      durationSeconds: 5,
    );
    return StateType.notFound;
  } else if (failure is BadRequestFailure) {
    return StateType.badRequest;
  } else if (failure is InternalServerErrorFailure) {
    return StateType.internalServerProblem;
  } else {
    return StateType.unexpectedProblem;
  }
}

StateType getStateFromError(String error) {
  switch (error) {
    case ResponseMessage.noContent:
      return StateType.notFound;
    case ResponseMessage.badRequest:
      return StateType.badRequest;
    case ResponseMessage.forbidden:
      EasyLoaderService.showError(
        message: ApiErrors.forbidden.tr,
        durationSeconds: 5,
      );
      return StateType.forbidden;
    case ResponseMessage.unautorised:
      EasyLoaderService.showError(
        message: ApiErrors.unauthorized.tr,
        durationSeconds: 5,
      );
      return StateType.unAuthorized;
    case ResponseMessage.notFound:
      EasyLoaderService.showError(
        message: ApiErrors.notFound.tr,
        durationSeconds: 5,
      );
      return StateType.notFound;
    case ResponseMessage.internalServer:
      return StateType.internalServerProblem;
    default:
      return StateType.unexpectedProblem;
  }
}