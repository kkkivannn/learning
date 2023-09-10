import 'student.dart';

class StudentsList {
  final List<Student> _students;
  StudentsList([this._students = const []]);

  List<Student> get students => _students;

  double get getAverageGrade {
    double grades = 0.0;
    for (var element in _students) {
      grades += element.grade;
    }
    return grades / _students.length;
  }

  set addStudent(Student student) {
    student.id = _students.length + 1;
    _students.add(student);
  }

  set deleteStudent(int id) {
    _students.removeWhere((element) => element.id == id);
  }

  set changeDataOfStudent(Student student) {
    _students[student.id] = student;
  }

  Student getStudentWithHighestGrade() {
    for (int i = 0; i < _students.length; i++) {
      for (int j = 0; j < _students.length; j++) {
        Student minStudent;
        if (_students[j].grade > _students[i].grade) {
          minStudent = _students[j];
          _students[j] = _students[i];
          _students[i] = minStudent;
        }
      }
    }
    return _students.last;
  }

  void getFilteredStudent({required String filter}) {
    switch (filter) {
      case 'П50-6-20':
        for (Student student in _students.where((element) => element.group == filter)) {
          print(student.group);
        }
        break;
      default:
        print('404 Not found!');
        break;
    }
  }
}
