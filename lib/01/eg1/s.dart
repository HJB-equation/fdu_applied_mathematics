import 'package:freezed_annotation/freezed_annotation.dart';

part 's.freezed.dart';

@freezed
sealed class S with _$S {
  const factory S.zero([
    @Default([]) List<double> points,
    @Default(false) bool hasReachedInfinity,
  ]) = Zero;
}
