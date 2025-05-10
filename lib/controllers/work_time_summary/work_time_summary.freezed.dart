// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_time_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$WorkTimeSummaryState {
  List<WorkTimeSummaryModel> get workTimeSummaryModelList =>
      throw _privateConstructorUsedError;
  Map<String, WorkTimeSummaryModel> get workTimeSummaryModelMap =>
      throw _privateConstructorUsedError;

  /// Create a copy of WorkTimeSummaryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkTimeSummaryStateCopyWith<WorkTimeSummaryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkTimeSummaryStateCopyWith<$Res> {
  factory $WorkTimeSummaryStateCopyWith(
    WorkTimeSummaryState value,
    $Res Function(WorkTimeSummaryState) then,
  ) = _$WorkTimeSummaryStateCopyWithImpl<$Res, WorkTimeSummaryState>;
  @useResult
  $Res call({
    List<WorkTimeSummaryModel> workTimeSummaryModelList,
    Map<String, WorkTimeSummaryModel> workTimeSummaryModelMap,
  });
}

/// @nodoc
class _$WorkTimeSummaryStateCopyWithImpl<
  $Res,
  $Val extends WorkTimeSummaryState
>
    implements $WorkTimeSummaryStateCopyWith<$Res> {
  _$WorkTimeSummaryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkTimeSummaryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workTimeSummaryModelList = null,
    Object? workTimeSummaryModelMap = null,
  }) {
    return _then(
      _value.copyWith(
            workTimeSummaryModelList:
                null == workTimeSummaryModelList
                    ? _value.workTimeSummaryModelList
                    : workTimeSummaryModelList // ignore: cast_nullable_to_non_nullable
                        as List<WorkTimeSummaryModel>,
            workTimeSummaryModelMap:
                null == workTimeSummaryModelMap
                    ? _value.workTimeSummaryModelMap
                    : workTimeSummaryModelMap // ignore: cast_nullable_to_non_nullable
                        as Map<String, WorkTimeSummaryModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WorkTimeSummaryStateImplCopyWith<$Res>
    implements $WorkTimeSummaryStateCopyWith<$Res> {
  factory _$$WorkTimeSummaryStateImplCopyWith(
    _$WorkTimeSummaryStateImpl value,
    $Res Function(_$WorkTimeSummaryStateImpl) then,
  ) = __$$WorkTimeSummaryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<WorkTimeSummaryModel> workTimeSummaryModelList,
    Map<String, WorkTimeSummaryModel> workTimeSummaryModelMap,
  });
}

/// @nodoc
class __$$WorkTimeSummaryStateImplCopyWithImpl<$Res>
    extends _$WorkTimeSummaryStateCopyWithImpl<$Res, _$WorkTimeSummaryStateImpl>
    implements _$$WorkTimeSummaryStateImplCopyWith<$Res> {
  __$$WorkTimeSummaryStateImplCopyWithImpl(
    _$WorkTimeSummaryStateImpl _value,
    $Res Function(_$WorkTimeSummaryStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WorkTimeSummaryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workTimeSummaryModelList = null,
    Object? workTimeSummaryModelMap = null,
  }) {
    return _then(
      _$WorkTimeSummaryStateImpl(
        workTimeSummaryModelList:
            null == workTimeSummaryModelList
                ? _value._workTimeSummaryModelList
                : workTimeSummaryModelList // ignore: cast_nullable_to_non_nullable
                    as List<WorkTimeSummaryModel>,
        workTimeSummaryModelMap:
            null == workTimeSummaryModelMap
                ? _value._workTimeSummaryModelMap
                : workTimeSummaryModelMap // ignore: cast_nullable_to_non_nullable
                    as Map<String, WorkTimeSummaryModel>,
      ),
    );
  }
}

/// @nodoc

class _$WorkTimeSummaryStateImpl implements _WorkTimeSummaryState {
  const _$WorkTimeSummaryStateImpl({
    final List<WorkTimeSummaryModel> workTimeSummaryModelList =
        const <WorkTimeSummaryModel>[],
    final Map<String, WorkTimeSummaryModel> workTimeSummaryModelMap =
        const <String, WorkTimeSummaryModel>{},
  }) : _workTimeSummaryModelList = workTimeSummaryModelList,
       _workTimeSummaryModelMap = workTimeSummaryModelMap;

  final List<WorkTimeSummaryModel> _workTimeSummaryModelList;
  @override
  @JsonKey()
  List<WorkTimeSummaryModel> get workTimeSummaryModelList {
    if (_workTimeSummaryModelList is EqualUnmodifiableListView)
      return _workTimeSummaryModelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workTimeSummaryModelList);
  }

  final Map<String, WorkTimeSummaryModel> _workTimeSummaryModelMap;
  @override
  @JsonKey()
  Map<String, WorkTimeSummaryModel> get workTimeSummaryModelMap {
    if (_workTimeSummaryModelMap is EqualUnmodifiableMapView)
      return _workTimeSummaryModelMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_workTimeSummaryModelMap);
  }

  @override
  String toString() {
    return 'WorkTimeSummaryState(workTimeSummaryModelList: $workTimeSummaryModelList, workTimeSummaryModelMap: $workTimeSummaryModelMap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkTimeSummaryStateImpl &&
            const DeepCollectionEquality().equals(
              other._workTimeSummaryModelList,
              _workTimeSummaryModelList,
            ) &&
            const DeepCollectionEquality().equals(
              other._workTimeSummaryModelMap,
              _workTimeSummaryModelMap,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_workTimeSummaryModelList),
    const DeepCollectionEquality().hash(_workTimeSummaryModelMap),
  );

  /// Create a copy of WorkTimeSummaryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkTimeSummaryStateImplCopyWith<_$WorkTimeSummaryStateImpl>
  get copyWith =>
      __$$WorkTimeSummaryStateImplCopyWithImpl<_$WorkTimeSummaryStateImpl>(
        this,
        _$identity,
      );
}

abstract class _WorkTimeSummaryState implements WorkTimeSummaryState {
  const factory _WorkTimeSummaryState({
    final List<WorkTimeSummaryModel> workTimeSummaryModelList,
    final Map<String, WorkTimeSummaryModel> workTimeSummaryModelMap,
  }) = _$WorkTimeSummaryStateImpl;

  @override
  List<WorkTimeSummaryModel> get workTimeSummaryModelList;
  @override
  Map<String, WorkTimeSummaryModel> get workTimeSummaryModelMap;

  /// Create a copy of WorkTimeSummaryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkTimeSummaryStateImplCopyWith<_$WorkTimeSummaryStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
