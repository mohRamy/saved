import '../../constants/app_api_error.dart';

import '../../errors/exception.dart';
import '../../errors/failures.dart';

Failure getFailureFromException(Object exception) {
  if (exception is BadRequestException) {
    return BadRequestFailure(message: exception.message);
  } else if (exception is UnAuthenticatedException) {
    return const UnAuthenticatedFailure(message: ApiErrors.forbidden);
  } else if (exception is UnAuthorizedException) {
    return const UnAuthorizedFailure(message: ApiErrors.unauthorized);
  } else if (exception is NotFoundException) {
    return const NotFoundFailure(message: ApiErrors.notFound);
  } else if (exception is InternalServerErrorException) {
    return const InternalServerErrorFailure(
      message: ApiErrors.internalServerError,
    );
  } else if (exception is OfflineException) {
    return const OfflineFailure(message: ApiErrors.offline);
  } else {
    // Get.find<Logger>().e(exception);
    return const UnexpectedFailure(
      message: ApiErrors.unexpectedException,
    );
  }
}
