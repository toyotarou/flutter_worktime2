class WorkTimeMonthlyModel {
  WorkTimeMonthlyModel({required this.date, required this.workStart, required this.workEnd});

  factory WorkTimeMonthlyModel.fromJson(Map<String, dynamic> json) => WorkTimeMonthlyModel(
    date: json['date'].toString(),
    workStart: json['work_start'].toString(),
    workEnd: json['work_end'].toString(),
  );
  String date;
  String workStart;
  String workEnd;

  Map<String, dynamic> toJson() => <String, dynamic>{'date': date, 'work_start': workStart, 'work_end': workEnd};
}
