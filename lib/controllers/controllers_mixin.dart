import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_param/app_param.dart';
import 'work_time_monthly/work_time_monthly.dart';
import 'work_time_summary/work_time_summary.dart';

mixin ControllersMixin<T extends ConsumerStatefulWidget> on ConsumerState<T> {
  //==========================================//

  AppParamState get appParamState => ref.watch(appParamProvider);

  AppParam get appParamNotifier => ref.read(appParamProvider.notifier);

  //==========================================//

  WorkTimeSummaryState get workTimeSummaryState => ref.watch(workTimeSummaryProvider);

  WorkTimeSummary get workTimeSummaryNotifier => ref.read(workTimeSummaryProvider.notifier);

  //==========================================//

  WorkTimeMonthlyState get workTimeMonthlyState => ref.watch(workTimeMonthlyProvider);

  WorkTimeMonthly get workTimeMonthlyNotifier => ref.read(workTimeMonthlyProvider.notifier);

  //==========================================//
}
