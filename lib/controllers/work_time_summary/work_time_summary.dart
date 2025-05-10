import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/http/client.dart';
import '../../extensions/extensions.dart';
import '../../model/work_time_summary_model.dart';
import '../../utility/utility.dart';

part 'work_time_summary.freezed.dart';
part 'work_time_summary.g.dart';

@freezed
class WorkTimeSummaryState with _$WorkTimeSummaryState {
  const factory WorkTimeSummaryState({
    @Default(<WorkTimeSummaryModel>[]) List<WorkTimeSummaryModel> workTimeSummaryModelList,
    @Default(<String, WorkTimeSummaryModel>{}) Map<String, WorkTimeSummaryModel> workTimeSummaryModelMap,
  }) = _WorkTimeSummaryState;
}

@Riverpod(keepAlive: true)
class WorkTimeSummary extends _$WorkTimeSummary {
  final Utility utility = Utility();

  ///
  @override
  WorkTimeSummaryState build() => const WorkTimeSummaryState();

  //============================================== api

  ///
  Future<WorkTimeSummaryState> fetchAllWorkTimeSummary() async {
    final HttpClient client = ref.read(httpClientProvider);

    try {
      final dynamic value = await client.postByPath(path: 'http://toyohide.work/BrainLog/api/worktimesummary');

      final List<WorkTimeSummaryModel> list = <WorkTimeSummaryModel>[];
      final Map<String, WorkTimeSummaryModel> map = <String, WorkTimeSummaryModel>{};

      // ignore: avoid_dynamic_calls
      for (int i = 0; i < value['data'].length.toString().toInt(); i++) {
        // ignore: avoid_dynamic_calls
        final List<String> exValue = value['data'][i].toString().split(';');

        final WorkTimeSummaryModel val = WorkTimeSummaryModel(
          yearmonth: exValue[0].trim(),
          workSum: exValue[1].trim(),
          company: exValue[2].trim(),
          genba: exValue[3].trim(),
        );

        list.add(val);

        map[exValue[0].trim()] = val;
      }

      return state.copyWith(workTimeSummaryModelList: list, workTimeSummaryModelMap: map);
    } catch (e) {
      utility.showError('予期せぬエラーが発生しました');
      rethrow; // これにより呼び出し元でキャッチできる
    }
  }

  ///
  Future<void> getAllWorkTimeSummary() async {
    try {
      final WorkTimeSummaryState newState = await fetchAllWorkTimeSummary();

      state = newState;
    } catch (_) {}
  }

  //============================================== api
}
