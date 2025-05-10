import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controllers/controllers_mixin.dart';
import '../extensions/extensions.dart';
import '../model/work_time_summary_model.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> with ControllersMixin<HomeScreen> {
  List<int> yearList = <int>[];

  List<GlobalKey> globalKeyList = <GlobalKey<State<StatefulWidget>>>[];

  ///
  @override
  void initState() {
    super.initState();

    workTimeSummaryNotifier.getAllWorkTimeSummary();

    // ignore: always_specify_types
    globalKeyList = List.generate(3000, (int index) => GlobalKey());
  }

  ///
  @override
  Widget build(BuildContext context) {
    makeYearList();

    return Scaffold(
      appBar: AppBar(),

      body: SafeArea(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 10),

            displayYearList(),

            const SizedBox(height: 10),

            Expanded(child: displayWorkTimeSummaryList()),
          ],
        ),
      ),
    );
  }

  ///
  Widget displayWorkTimeSummaryList() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
            yearList.map((int e) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    key: globalKeyList[e],

                    width: context.screenSize.width,
                    margin: const EdgeInsets.all(3),
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(color: Colors.yellowAccent.withValues(alpha: 0.2)),

                    child: Text(e.toString()),
                  ),
                  Wrap(
                    children:
                        // ignore: always_specify_types
                        List.generate(12, (int index) => index).map((int e2) {
                          final WorkTimeSummaryModel? data =
                              workTimeSummaryState.workTimeSummaryModelMap['$e-${(e2 + 1).toString().padLeft(2, '0')}'];

                          return Container(
                            width: context.screenSize.width * 0.45,

                            margin: const EdgeInsets.all(2),
                            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 2),

                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white.withValues(alpha: 0.2)),

                              color:
                                  ('$e-${(e2 + 1).toString().padLeft(2, '0')}' == DateTime.now().yyyymm)
                                      ? Colors.orangeAccent.withValues(alpha: 0.1)
                                      : (data != null && data.workSum.split('.')[0].toInt() > 0)
                                      ? Colors.transparent
                                      : Colors.grey.withValues(alpha: 0.1),
                            ),

                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Text((e2 + 1).toString().padLeft(2, '0')),

                                    const SizedBox(height: 10),

                                    Icon(Icons.input, color: Colors.white.withValues(alpha: 0.4)),
                                  ],
                                ),

                                const SizedBox(width: 20),

                                Expanded(
                                  child: ConstrainedBox(
                                    constraints: BoxConstraints(minHeight: context.screenSize.height / 12),

                                    child:
                                        (data != null && data.workSum.split('.')[0].toInt() > 0)
                                            ? DefaultTextStyle(
                                              style: const TextStyle(fontSize: 12),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                children: <Widget>[
                                                  Text(data.workSum),
                                                  Text(data.company, maxLines: 1, overflow: TextOverflow.ellipsis),
                                                  Text(data.genba, maxLines: 1, overflow: TextOverflow.ellipsis),
                                                ],
                                              ),
                                            )
                                            : const SizedBox.shrink(),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                  ),

                  const SizedBox(height: 20),
                ],
              );
            }).toList(),
      ),
    );
  }

  ///
  Future<void> scrollToIndex(int index) async {
    final BuildContext target = globalKeyList[index].currentContext!;

    await Scrollable.ensureVisible(target, duration: const Duration(milliseconds: 1000));
  }

  ///
  void makeYearList() {
    yearList.clear();

    if (workTimeSummaryState.workTimeSummaryModelList.isNotEmpty) {
      final WorkTimeSummaryModel workTimeSummaryFirst = workTimeSummaryState.workTimeSummaryModelList.first;

      for (int i = workTimeSummaryFirst.yearmonth.split('-')[0].toInt(); i <= DateTime.now().year; i++) {
        if (!yearList.contains(i)) {
          yearList.add(i);
        }
      }

      yearList.sort((int a, int b) => a.compareTo(b) * -1);
    }
  }

  ///
  Widget displayYearList() {
    final List<Widget> list = <Widget>[];

    for (final int element in yearList) {
      list.add(
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: GestureDetector(
            onTap: () {
              appParamNotifier.setSelectedYear(year: element);

              scrollToIndex(element);
            },
            child: CircleAvatar(
              backgroundColor:
                  (element == appParamState.selectedYear) ? Colors.yellowAccent.withValues(alpha: 0.4) : Colors.black,

              radius: 20,
              child: Text(element.toString(), style: const TextStyle(fontSize: 12)),
            ),
          ),
        ),
      );
    }

    return SizedBox(
      height: 40,
      child: SingleChildScrollView(scrollDirection: Axis.horizontal, child: Row(children: list)),
    );
  }
}
