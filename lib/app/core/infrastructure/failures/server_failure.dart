import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_failure.freezed.dart';

@freezed
abstract class ServerFailures with _$ServerFailures {
  const factory ServerFailures.connectionFailure(
      {@Default("Connection Error\n Please Check Your Internet Connection")
          String msg}) = _ConnectionFailure;
  const factory ServerFailures.unexpectedFailure({@Default("Unexpected Error Happened") String msg}) =
      _UnexpectedFailure;
  const factory ServerFailures.noFoundFailure({@Default("Data Not Found") String msg}) =
      _NotFoundFailure;
  const factory ServerFailures.noDataChangedToBeUpdated({@Default("No Data Changed") String msg}) =
      _NoDataChangedToBeUpdated;
}
