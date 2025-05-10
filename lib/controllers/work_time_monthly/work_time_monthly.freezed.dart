// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_time_monthly.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$WorkTimeMonthlyState {
  List<WorkTimeMonthlyModel> get workTimeMonthlyModelList =>
      throw _privateConstructorUsedError;
  Map<String, WorkTimeMonthlyModel> get workTimeMonthlyModelMap =>
      throw _privateConstructorUsedError;
  String get selectedDate => throw _privateConstructorUsedError;

  /// Create a copy of WorkTimeMonthlyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkTimeMonthlyStateCopyWith<WorkTimeMonthlyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkTimeMonthlyStateCopyWith<$Res> {
  factory $WorkTimeMonthlyStateCopyWith(
    WorkTimeMonthlyState value,
    $Res Function(WorkTimeMonthlyState) then,
  ) = _$WorkTimeMonthlyStateCopyWithImpl<$Res, WorkTimeMonthlyState>;
  @useResult
  $Res call({
    List<WorkTimeMonthlyModel> workTimeMonthlyModelList,
    Map<String, WorkTimeMonthlyModel> workTimeMonthlyModelMap,
    String selectedDate,
  });
}

/// @nodoc
class _$WorkTimeMonthlyStateCopyWithImpl<
  $Res,
  $Val extends WorkTimeMonthlyState
>
    implements $WorkTimeMonthlyStateCopyWith<$Res> {
  _$WorkTimeMonthlyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkTimeMonthlyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workTimeMonthlyModelList = null,
    Object? workTimeMonthlyModelMap = null,
    Object? selectedDate = null,
  }) {
    return _then(
      _value.copyWith(
            workTimeMonthlyModelList:
                null == workTimeMonthlyModelList
                    ? _value.workTimeMonthlyModelList
                    : workTimeMonthlyModelList // ignore: cast_nullable_to_non_nullable
                        as List<WorkTimeMonthlyModel>,
            workTimeMonthlyModelMap:
                null == workTimeMonthlyModelMap
                    ? _value.workTimeMonthlyModelMap
                    : workTimeMonthlyModelMap // ignore: cast_nullable_to_non_nullable
                        as Map<String, WorkTimeMonthlyModel>,
            selectedDate:
                null == selectedDate
                    ? _value.selectedDate
                    : selectedDate // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WorkTimeMonthlyStateImplCopyWith<$Res>
    implements $WorkTimeMonthlyStateCopyWith<$Res> {
  factory _$$WorkTimeMonthlyStateImplCopyWith(
    _$WorkTimeMonthlyStateImpl value,
    $Res Function(_$WorkTimeMonthlyStateImpl) then,
  ) = __$$WorkTimeMonthlyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<WorkTimeMonthlyModel> workTimeMonthlyModelList,
    Map<String, WorkTimeMonthlyModel> workTimeMonthlyModelMap,
    String selectedDate,
  });
}

/// @nodoc
class __$$WorkTimeMonthlyStateImplCopyWithImpl<$Res>
    extends _$WorkTimeMonthlyStateCopyWithImpl<$Res, _$WorkTimeMonthlyStateImpl>
    implements _$$WorkTimeMonthlyStateImplCopyWith<$Res> {
  __$$WorkTimeMonthlyStateImplCopyWithImpl(
    _$WorkTimeMonthlyStateImpl _value,
    $Res Function(_$WorkTimeMonthlyStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WorkTimeMonthlyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workTimeMonthlyModelList = null,
    Object? workTimeMonthlyModelMap = null,
    Object? selectedDate = null,
  }) {
    return _then(
      _$WorkTimeMonthlyStateImpl(
        workTimeMonthlyModelList:
            null == workTimeMonthlyModelList
                ? _value._workTimeMonthlyModelList
                : workTimeMonthlyModelList // ignore: cast_nullable_to_non_nullable
                    as List<WorkTimeMonthlyModel>,
        workTimeMonthlyModelMap:
            null == workTimeMonthlyModelMap
                ? _value._workTimeMonthlyModelMap
                : workTimeMonthlyModelMap // ignore: cast_nullable_to_non_nullable
                    as Map<String, WorkTimeMonthlyModel>,
        selectedDate:
            null == selectedDate
                ? _value.selectedDate
                : selectedDate // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$WorkTimeMonthlyStateImpl implements _WorkTimeMonthlyState {
  const _$WorkTimeMonthlyStateImpl({
    final List<WorkTimeMonthlyModel> workTimeMonthlyModelList =
        const <WorkTimeMonthlyModel>[],
    final Map<String, WorkTimeMonthlyModel> workTimeMonthlyModelMap =
        const <String, WorkTimeMonthlyModel>{},
    this.selectedDate = '',
  }) : _workTimeMonthlyModelList = workTimeMonthlyModelList,
       _workTimeMonthlyModelMap = workTimeMonthlyModelMap;

  final List<WorkTimeMonthlyModel> _workTimeMonthlyModelList;
  @override
  @JsonKey()
  List<WorkTimeMonthlyModel> get workTimeMonthlyModelList {
    if (_workTimeMonthlyModelList is EqualUnmodifiableListView)
      return _workTimeMonthlyModelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workTimeMonthlyModelList);
  }

  final Map<String, WorkTimeMonthlyModel> _workTimeMonthlyModelMap;
  @override
  @JsonKey()
  Map<String, WorkTimeMonthlyModel> get workTimeMonthlyModelMap {
    if (_workTimeMonthlyModelMap is EqualUnmodifiableMapView)
      return _workTimeMonthlyModelMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_workTimeMonthlyModelMap);
  }

  @override
  @JsonKey()
  final String selectedDate;

  @override
  String toString() {
    return 'WorkTimeMonthlyState(workTimeMonthlyModelList: $workTimeMonthlyModelList, workTimeMonthlyModelMap: $workTimeMonthlyModelMap, selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkTimeMonthlyStateImpl &&
            const DeepCollectionEquality().equals(
              other._workTimeMonthlyModelList,
              _workTimeMonthlyModelList,
            ) &&
            const DeepCollectionEquality().equals(
              other._workTimeMonthlyModelMap,
              _workTimeMonthlyModelMap,
            ) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_workTimeMonthlyModelList),
    const DeepCollectionEquality().hash(_workTimeMonthlyModelMap),
    selectedDate,
  );

  /// Create a copy of WorkTimeMonthlyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkTimeMonthlyStateImplCopyWith<_$WorkTimeMonthlyStateImpl>
  get copyWith =>
      __$$WorkTimeMonthlyStateImplCopyWithImpl<_$WorkTimeMonthlyStateImpl>(
        this,
        _$identity,
      );
}

abstract class _WorkTimeMonthlyState implements WorkTimeMonthlyState {
  const factory _WorkTimeMonthlyState({
    final List<WorkTimeMonthlyModel> workTimeMonthlyModelList,
    final Map<String, WorkTimeMonthlyModel> workTimeMonthlyModelMap,
    final String selectedDate,
  }) = _$WorkTimeMonthlyStateImpl;

  @override
  List<WorkTimeMonthlyModel> get workTimeMonthlyModelList;
  @override
  Map<String, WorkTimeMonthlyModel> get workTimeMonthlyModelMap;
  @override
  String get selectedDate;

  /// Create a copy of WorkTimeMonthlyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkTimeMonthlyStateImplCopyWith<_$WorkTimeMonthlyStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
