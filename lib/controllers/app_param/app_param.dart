import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../utility/utility.dart';

part 'app_param.freezed.dart';

part 'app_param.g.dart';

@freezed
class AppParamState with _$AppParamState {
  const factory AppParamState({@Default(0) int selectedYear}) = _AppParamState;
}

@Riverpod(keepAlive: true)
class AppParam extends _$AppParam {
  final Utility utility = Utility();

  ///
  @override
  AppParamState build() => AppParamState(selectedYear: DateTime.now().year);

  ///
  void setSelectedYear({required int year}) => state = state.copyWith(selectedYear: year);
}
