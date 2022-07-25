
class Grade {

  String id;
  String semester;
  String grade;

  Grade(this.id, this.semester, this.grade);

  Map<String,dynamic> toJson(){
    Map<String,dynamic> map={
      "id":id,
      "semester":semester,
      "grade":grade
    };
    return map;
  }


}