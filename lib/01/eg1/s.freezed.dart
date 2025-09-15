// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 's.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$S {

 List<double> get points; bool get hasReachedInfinity;
/// Create a copy of S
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SCopyWith<S> get copyWith => _$SCopyWithImpl<S>(this as S, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is S&&const DeepCollectionEquality().equals(other.points, points)&&(identical(other.hasReachedInfinity, hasReachedInfinity) || other.hasReachedInfinity == hasReachedInfinity));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(points),hasReachedInfinity);

@override
String toString() {
  return 'S(points: $points, hasReachedInfinity: $hasReachedInfinity)';
}


}

/// @nodoc
abstract mixin class $SCopyWith<$Res>  {
  factory $SCopyWith(S value, $Res Function(S) _then) = _$SCopyWithImpl;
@useResult
$Res call({
 List<double> points, bool hasReachedInfinity
});




}
/// @nodoc
class _$SCopyWithImpl<$Res>
    implements $SCopyWith<$Res> {
  _$SCopyWithImpl(this._self, this._then);

  final S _self;
  final $Res Function(S) _then;

/// Create a copy of S
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? points = null,Object? hasReachedInfinity = null,}) {
  return _then(_self.copyWith(
points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as List<double>,hasReachedInfinity: null == hasReachedInfinity ? _self.hasReachedInfinity : hasReachedInfinity // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [S].
extension SPatterns on S {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Zero value)?  zero,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Zero() when zero != null:
return zero(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Zero value)  zero,}){
final _that = this;
switch (_that) {
case Zero():
return zero(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Zero value)?  zero,}){
final _that = this;
switch (_that) {
case Zero() when zero != null:
return zero(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<double> points,  bool hasReachedInfinity)?  zero,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Zero() when zero != null:
return zero(_that.points,_that.hasReachedInfinity);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<double> points,  bool hasReachedInfinity)  zero,}) {final _that = this;
switch (_that) {
case Zero():
return zero(_that.points,_that.hasReachedInfinity);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<double> points,  bool hasReachedInfinity)?  zero,}) {final _that = this;
switch (_that) {
case Zero() when zero != null:
return zero(_that.points,_that.hasReachedInfinity);case _:
  return null;

}
}

}

/// @nodoc


class Zero implements S {
  const Zero([final  List<double> points = const [], this.hasReachedInfinity = false]): _points = points;
  

 final  List<double> _points;
@override@JsonKey() List<double> get points {
  if (_points is EqualUnmodifiableListView) return _points;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_points);
}

@override@JsonKey() final  bool hasReachedInfinity;

/// Create a copy of S
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZeroCopyWith<Zero> get copyWith => _$ZeroCopyWithImpl<Zero>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Zero&&const DeepCollectionEquality().equals(other._points, _points)&&(identical(other.hasReachedInfinity, hasReachedInfinity) || other.hasReachedInfinity == hasReachedInfinity));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_points),hasReachedInfinity);

@override
String toString() {
  return 'S.zero(points: $points, hasReachedInfinity: $hasReachedInfinity)';
}


}

/// @nodoc
abstract mixin class $ZeroCopyWith<$Res> implements $SCopyWith<$Res> {
  factory $ZeroCopyWith(Zero value, $Res Function(Zero) _then) = _$ZeroCopyWithImpl;
@override @useResult
$Res call({
 List<double> points, bool hasReachedInfinity
});




}
/// @nodoc
class _$ZeroCopyWithImpl<$Res>
    implements $ZeroCopyWith<$Res> {
  _$ZeroCopyWithImpl(this._self, this._then);

  final Zero _self;
  final $Res Function(Zero) _then;

/// Create a copy of S
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? points = null,Object? hasReachedInfinity = null,}) {
  return _then(Zero(
null == points ? _self._points : points // ignore: cast_nullable_to_non_nullable
as List<double>,null == hasReachedInfinity ? _self.hasReachedInfinity : hasReachedInfinity // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
