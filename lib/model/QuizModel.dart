class QuizModel {
  final num seq;
  final String title;
  final String d1;
  final String d2;
  final String d3;
  final String d4;
  final int answer;
  final isChecked = false;

  QuizModel({
    required this.seq,
    required this.title,
    required this.d1,
    required this.d2,
    required this.d3,
    required this.d4,
    required this.answer,
  });

  factory QuizModel.fromJson(Map<String, dynamic> json) {
    return QuizModel(
      seq: json['SEQ'] as num,
      title: json['title'],
      d1: json['d1'],
      d2: json['d2'],
      d3: json['d3'],
      d4: json['d4'],
      answer: int.parse(json['answer']),
    );
  }
}
