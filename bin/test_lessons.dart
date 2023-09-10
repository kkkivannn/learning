import 'class/student.dart';
import 'class/students_list.dart';

Future<void> main() async {
  StudentsList studentsList = StudentsList(listWithStudents);
  studentsList.addStudent = Student(
    firstName: "firstName",
    surname: "surname",
    middleName: "middleName",
    age: 11,
    group: "",
    grade: 7.00,
  );
  studentsList.deleteStudent = 12;
  for (var element in studentsList.students) {
    print(element.id);
  }
  print(studentsList.getStudentWithHighestGrade());
  print(studentsList.getAverageGrade.toString());
  studentsList.getFilteredStudent(filter: 'П50-620');
}
