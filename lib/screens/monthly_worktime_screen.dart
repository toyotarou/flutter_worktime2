import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controllers/controllers_mixin.dart';
import '../extensions/extensions.dart';
import '../model/work_time_monthly_model.dart';

class MonthlyWorktimeScreen extends ConsumerStatefulWidget {
  const MonthlyWorktimeScreen({super.key, required this.yearmonth});

  final String yearmonth;

  @override
  ConsumerState<MonthlyWorktimeScreen> createState() => _MonthlyWorktimeScreenState();
}

class _MonthlyWorktimeScreenState extends ConsumerState<MonthlyWorktimeScreen>
    with ControllersMixin<MonthlyWorktimeScreen> {
  ///
  @override
  void initState() {
    super.initState();

    workTimeMonthlyNotifier.getAllWorkTimeMonthly();
  }

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,

      body: SafeArea(
        child: Column(
          children: <Widget>[
            Text(widget.yearmonth),
            Divider(color: Colors.white.withValues(alpha: 0.4)),

            Expanded(child: displayMonthlyWorkTimeList()),
          ],
        ),
      ),
    );
  }

  ///
  Widget displayMonthlyWorkTimeList() {
    final List<Widget> list = <Widget>[];

    final int monthEnd =
        DateTime(widget.yearmonth.split('-')[0].toInt(), widget.yearmonth.split('-')[1].toInt() + 1, 0).day;

    for (int i = 0; i < monthEnd; i++) {
      final String listdate = '${widget.yearmonth}-${(i + 1).toString().padLeft(2, '0')}';

      final WorkTimeMonthlyModel? data = workTimeMonthlyState.workTimeMonthlyModelMap[listdate];

      list.add(
        Row(
          children: <Widget>[
            Expanded(child: Text(listdate)),
            Expanded(child: Text((data == null) ? '-' : data.workStart)),
            Expanded(child: Text((data == null) ? '-' : data.workEnd)),
          ],
        ),
      );
    }

    return SingleChildScrollView(child: Column(children: list));
  }
}
