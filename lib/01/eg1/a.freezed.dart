// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'a.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$A {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is A);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'A()';
}


}

/// @nodoc
class $ACopyWith<$Res>  {
$ACopyWith(A _, $Res Function(A) __);
}


/// Adds pattern-matching-related methods to [A].
extension APatterns on A {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Init value)?  init,TResult Function( Step1 value)?  step,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Init() when init != null:
return init(_that);case Step1() when step != null:
return step(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Init value)  init,required TResult Function( Step1 value)  step,}){
final _that = this;
switch (_that) {
case Init():
return init(_that);case Step1():
return step(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Init value)?  init,TResult? Function( Step1 value)?  step,}){
final _that = this;
switch (_that) {
case Init() when init != null:
return init(_that);case Step1() when step != null:
return step(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( double x0)?  init,TResult Function()?  step,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Init() when init != null:
return init(_that.x0);case Step1() when step != null:
return step();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( double x0)  init,required TResult Function()  step,}) {final _that = this;
switch (_that) {
case Init():
return init(_that.x0);case Step1():
return step();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( double x0)?  init,TResult? Function()?  step,}) {final _that = this;
switch (_that) {
case Init() when init != null:
return init(_that.x0);case Step1() when step != null:
return step();case _:
  return null;

}
}

}

/// @nodoc


class Init implements A {
  const Init(this.x0);
  

 final  double x0;

/// Create a copy of A
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InitCopyWith<Init> get copyWith => _$InitCopyWithImpl<Init>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Init&&(identical(other.x0, x0) || other.x0 == x0));
}


@override
int get hashCode => Object.hash(runtimeType,x0);

@override
String toString() {
  return 'A.init(x0: $x0)';
}


}

/// @nodoc
abstract mixin class $InitCopyWith<$Res> implements $ACopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) _then) = _$InitCopyWithImpl;
@useResult
$Res call({
 double x0
});




}
/// @nodoc
class _$InitCopyWithImpl<$Res>
    implements $InitCopyWith<$Res> {
  _$InitCopyWithImpl(this._self, this._then);

  final Init _self;
  final $Res Function(Init) _then;

/// Create a copy of A
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? x0 = null,}) {
  return _then(Init(
null == x0 ? _self.x0 : x0 // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class Step1 implements A {
  const Step1();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Step1);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'A.step()';
}


}




// dart format on
