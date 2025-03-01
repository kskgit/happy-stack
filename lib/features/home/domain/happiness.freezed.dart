// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'happiness.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Happiness {
  int get id;
  String get name;
  String get dayOfWeek;
  String get notificationTime;
  DateTime get createdAt;

  /// Create a copy of Happiness
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HappinessCopyWith<Happiness> get copyWith =>
      _$HappinessCopyWithImpl<Happiness>(this as Happiness, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Happiness &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek) &&
            (identical(other.notificationTime, notificationTime) ||
                other.notificationTime == notificationTime) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, dayOfWeek, notificationTime, createdAt);

  @override
  String toString() {
    return 'Happiness(id: $id, name: $name, dayOfWeek: $dayOfWeek, notificationTime: $notificationTime, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $HappinessCopyWith<$Res> {
  factory $HappinessCopyWith(Happiness value, $Res Function(Happiness) _then) =
      _$HappinessCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'day_of_week') String dayOfWeek,
      @JsonKey(name: 'notification_time') String notificationTime,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class _$HappinessCopyWithImpl<$Res> implements $HappinessCopyWith<$Res> {
  _$HappinessCopyWithImpl(this._self, this._then);

  final Happiness _self;
  final $Res Function(Happiness) _then;

  /// Create a copy of Happiness
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? dayOfWeek = null,
    Object? notificationTime = null,
    Object? createdAt = null,
  }) {
    return _then(Happiness(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dayOfWeek: null == dayOfWeek
          ? _self.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as String,
      notificationTime: null == notificationTime
          ? _self.notificationTime
          : notificationTime // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
