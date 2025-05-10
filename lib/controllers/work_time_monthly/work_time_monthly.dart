import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/http/client.dart';
import '../../extensions/extensions.dart';
import '../../model/work_time_monthly_model.dart';
import '../../utility/utility.dart';

part 'work_time_monthly.freezed.dart';

part 'work_time_monthly.g.dart';

@freezed
class WorkTimeMonthlyState with _$WorkTimeMonthlyState {
  const factory WorkTimeMonthlyState({
    @Default(<WorkTimeMonthlyModel>[]) List<WorkTimeMonthlyModel> workTimeMonthlyModelList,

    @Default(<String, WorkTimeMonthlyModel>{}) Map<String, WorkTimeMonthlyModel> workTimeMonthlyModelMap,

    @Default('') String selectedDate,
  }) = _WorkTimeMonthlyState;
}

@Riverpod(keepAlive: true)
class WorkTimeMonthly extends _$WorkTimeMonthly {
  final Utility utility = Utility();

  ///
  @override
  WorkTimeMonthlyState build() => const WorkTimeMonthlyState();

  ///
  void setSelectedDate({required String date}) => state = state.copyWith(selectedDate: date);

  //============================================== api

  ///
  Future<WorkTimeMonthlyState> fetchAllWorkTimeMonthly() async {
    final HttpClient client = ref.read(httpClientProvider);

    try {
      final dynamic value = await client.postByPath(
        path: 'http://toyohide.work/BrainLog/api/worktimemonthdata',
        body: <String, dynamic>{'date': state.selectedDate},
      );

      final List<WorkTimeMonthlyModel> list = <WorkTimeMonthlyModel>[];

      final Map<String, WorkTimeMonthlyModel> map = <String, WorkTimeMonthlyModel>{};

      // ignore: avoid_dynamic_calls
      for (int i = 0; i < value['data'].length.toString().toInt(); i++) {
        // ignore: avoid_dynamic_calls
        final WorkTimeMonthlyModel val = WorkTimeMonthlyModel.fromJson(value['data'][i] as Map<String, dynamic>);

        list.add(val);

        map[val.date] = val;
      }

      return state.copyWith(workTimeMonthlyModelList: list, workTimeMonthlyModelMap: map);
    } catch (e) {
      utility.showError('予期せぬエラーが発生しました');
      rethrow; // これにより呼び出し元でキャッチできる
    }
  }

  ///
  Future<void> getAllWorkTimeMonthly() async {
    try {
      final WorkTimeMonthlyState newState = await fetchAllWorkTimeMonthly();

      state = newState;
    } catch (_) {}
  }

  //============================================== api
}
