class QuestionRounds {
  String title;
  String preDescription;
  List<Points> points;
  String endDescription;
  QuestionRounds(
    this.title,
    this.preDescription,
     this.points,
     this.endDescription
  );
}
class Points{
  String point;
  List<String> subPoints;
  Points(this.point,this.subPoints);
}
