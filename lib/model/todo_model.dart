import 'dart:convert';

class ToDoModel {
  final String taskName;
  final String date;
  final String time;
  ToDoModel({
    required this.taskName,
    required this.date,
    required this.time,
  });

  ToDoModel copyWith({
    String? taskName,
    String? date,
    String? time,
  }) {
    return ToDoModel(
      taskName: taskName ?? this.taskName,
      date: date ?? this.date,
      time: time ?? this.time,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'taskName': taskName,
      'date': date,
      'time': time,
    };
  }

  factory ToDoModel.fromMap(Map<String, dynamic> map) {
    return ToDoModel(
      taskName: map['taskName'] as String,
      date: map['date'] as String,
      time: map['time'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ToDoModel.fromJson(String source) =>
      ToDoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'ToDoModel(taskName: $taskName, date: $date, time: $time)';

  @override
  bool operator ==(covariant ToDoModel other) {
    if (identical(this, other)) return true;

    return other.taskName == taskName &&
        other.date == date &&
        other.time == time;
  }

  @override
  int get hashCode => taskName.hashCode ^ date.hashCode ^ time.hashCode;
}
