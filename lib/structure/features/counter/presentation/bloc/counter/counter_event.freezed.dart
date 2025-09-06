// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counter_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CounterEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CounterEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CounterEvent()';
}


}

/// @nodoc
class $CounterEventCopyWith<$Res>  {
$CounterEventCopyWith(CounterEvent _, $Res Function(CounterEvent) __);
}


/// Adds pattern-matching-related methods to [CounterEvent].
extension CounterEventPatterns on CounterEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( IncrementPressed value)?  incrementPressed,TResult Function( DecrementPressed value)?  decrementPressed,TResult Function( ResetPressed value)?  resetPressed,TResult Function( LoadCountInitiated value)?  loadCount,required TResult orElse(),}){
final _that = this;
switch (_that) {
case IncrementPressed() when incrementPressed != null:
return incrementPressed(_that);case DecrementPressed() when decrementPressed != null:
return decrementPressed(_that);case ResetPressed() when resetPressed != null:
return resetPressed(_that);case LoadCountInitiated() when loadCount != null:
return loadCount(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( IncrementPressed value)  incrementPressed,required TResult Function( DecrementPressed value)  decrementPressed,required TResult Function( ResetPressed value)  resetPressed,required TResult Function( LoadCountInitiated value)  loadCount,}){
final _that = this;
switch (_that) {
case IncrementPressed():
return incrementPressed(_that);case DecrementPressed():
return decrementPressed(_that);case ResetPressed():
return resetPressed(_that);case LoadCountInitiated():
return loadCount(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( IncrementPressed value)?  incrementPressed,TResult? Function( DecrementPressed value)?  decrementPressed,TResult? Function( ResetPressed value)?  resetPressed,TResult? Function( LoadCountInitiated value)?  loadCount,}){
final _that = this;
switch (_that) {
case IncrementPressed() when incrementPressed != null:
return incrementPressed(_that);case DecrementPressed() when decrementPressed != null:
return decrementPressed(_that);case ResetPressed() when resetPressed != null:
return resetPressed(_that);case LoadCountInitiated() when loadCount != null:
return loadCount(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Counter current)?  incrementPressed,TResult Function( Counter current)?  decrementPressed,TResult Function( Counter current)?  resetPressed,TResult Function()?  loadCount,required TResult orElse(),}) {final _that = this;
switch (_that) {
case IncrementPressed() when incrementPressed != null:
return incrementPressed(_that.current);case DecrementPressed() when decrementPressed != null:
return decrementPressed(_that.current);case ResetPressed() when resetPressed != null:
return resetPressed(_that.current);case LoadCountInitiated() when loadCount != null:
return loadCount();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Counter current)  incrementPressed,required TResult Function( Counter current)  decrementPressed,required TResult Function( Counter current)  resetPressed,required TResult Function()  loadCount,}) {final _that = this;
switch (_that) {
case IncrementPressed():
return incrementPressed(_that.current);case DecrementPressed():
return decrementPressed(_that.current);case ResetPressed():
return resetPressed(_that.current);case LoadCountInitiated():
return loadCount();case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Counter current)?  incrementPressed,TResult? Function( Counter current)?  decrementPressed,TResult? Function( Counter current)?  resetPressed,TResult? Function()?  loadCount,}) {final _that = this;
switch (_that) {
case IncrementPressed() when incrementPressed != null:
return incrementPressed(_that.current);case DecrementPressed() when decrementPressed != null:
return decrementPressed(_that.current);case ResetPressed() when resetPressed != null:
return resetPressed(_that.current);case LoadCountInitiated() when loadCount != null:
return loadCount();case _:
  return null;

}
}

}

/// @nodoc


class IncrementPressed implements CounterEvent {
  const IncrementPressed(this.current);
  

 final  Counter current;

/// Create a copy of CounterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IncrementPressedCopyWith<IncrementPressed> get copyWith => _$IncrementPressedCopyWithImpl<IncrementPressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IncrementPressed&&(identical(other.current, current) || other.current == current));
}


@override
int get hashCode => Object.hash(runtimeType,current);

@override
String toString() {
  return 'CounterEvent.incrementPressed(current: $current)';
}


}

/// @nodoc
abstract mixin class $IncrementPressedCopyWith<$Res> implements $CounterEventCopyWith<$Res> {
  factory $IncrementPressedCopyWith(IncrementPressed value, $Res Function(IncrementPressed) _then) = _$IncrementPressedCopyWithImpl;
@useResult
$Res call({
 Counter current
});


$CounterCopyWith<$Res> get current;

}
/// @nodoc
class _$IncrementPressedCopyWithImpl<$Res>
    implements $IncrementPressedCopyWith<$Res> {
  _$IncrementPressedCopyWithImpl(this._self, this._then);

  final IncrementPressed _self;
  final $Res Function(IncrementPressed) _then;

/// Create a copy of CounterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? current = null,}) {
  return _then(IncrementPressed(
null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as Counter,
  ));
}

/// Create a copy of CounterEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CounterCopyWith<$Res> get current {
  
  return $CounterCopyWith<$Res>(_self.current, (value) {
    return _then(_self.copyWith(current: value));
  });
}
}

/// @nodoc


class DecrementPressed implements CounterEvent {
  const DecrementPressed(this.current);
  

 final  Counter current;

/// Create a copy of CounterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DecrementPressedCopyWith<DecrementPressed> get copyWith => _$DecrementPressedCopyWithImpl<DecrementPressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecrementPressed&&(identical(other.current, current) || other.current == current));
}


@override
int get hashCode => Object.hash(runtimeType,current);

@override
String toString() {
  return 'CounterEvent.decrementPressed(current: $current)';
}


}

/// @nodoc
abstract mixin class $DecrementPressedCopyWith<$Res> implements $CounterEventCopyWith<$Res> {
  factory $DecrementPressedCopyWith(DecrementPressed value, $Res Function(DecrementPressed) _then) = _$DecrementPressedCopyWithImpl;
@useResult
$Res call({
 Counter current
});


$CounterCopyWith<$Res> get current;

}
/// @nodoc
class _$DecrementPressedCopyWithImpl<$Res>
    implements $DecrementPressedCopyWith<$Res> {
  _$DecrementPressedCopyWithImpl(this._self, this._then);

  final DecrementPressed _self;
  final $Res Function(DecrementPressed) _then;

/// Create a copy of CounterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? current = null,}) {
  return _then(DecrementPressed(
null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as Counter,
  ));
}

/// Create a copy of CounterEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CounterCopyWith<$Res> get current {
  
  return $CounterCopyWith<$Res>(_self.current, (value) {
    return _then(_self.copyWith(current: value));
  });
}
}

/// @nodoc


class ResetPressed implements CounterEvent {
  const ResetPressed(this.current);
  

 final  Counter current;

/// Create a copy of CounterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetPressedCopyWith<ResetPressed> get copyWith => _$ResetPressedCopyWithImpl<ResetPressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPressed&&(identical(other.current, current) || other.current == current));
}


@override
int get hashCode => Object.hash(runtimeType,current);

@override
String toString() {
  return 'CounterEvent.resetPressed(current: $current)';
}


}

/// @nodoc
abstract mixin class $ResetPressedCopyWith<$Res> implements $CounterEventCopyWith<$Res> {
  factory $ResetPressedCopyWith(ResetPressed value, $Res Function(ResetPressed) _then) = _$ResetPressedCopyWithImpl;
@useResult
$Res call({
 Counter current
});


$CounterCopyWith<$Res> get current;

}
/// @nodoc
class _$ResetPressedCopyWithImpl<$Res>
    implements $ResetPressedCopyWith<$Res> {
  _$ResetPressedCopyWithImpl(this._self, this._then);

  final ResetPressed _self;
  final $Res Function(ResetPressed) _then;

/// Create a copy of CounterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? current = null,}) {
  return _then(ResetPressed(
null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as Counter,
  ));
}

/// Create a copy of CounterEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CounterCopyWith<$Res> get current {
  
  return $CounterCopyWith<$Res>(_self.current, (value) {
    return _then(_self.copyWith(current: value));
  });
}
}

/// @nodoc


class LoadCountInitiated implements CounterEvent {
  const LoadCountInitiated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadCountInitiated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CounterEvent.loadCount()';
}


}




// dart format on
