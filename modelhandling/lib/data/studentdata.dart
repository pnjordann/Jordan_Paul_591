// import '../model/student.dart';

// class StudentService {
//   Future<List<Student>> fetchStudent() async {
//     await Future.delayed(const Duration(seconds: 2));

//     final rawData = [
//       {'id': '1', 'name': 'JJ Collin', 'age': 20, 'gpa': 1.5},
//       {'id': '2', 'name': 'Yuen James', 'age': 22, 'gpa': 2.5},
//       {'id': '3', 'name': 'Bob Builder', 'age': 21, 'gpa': 1.5},
//     ];

//     return rawData.map((data) => Student.fromMap(data)).toList();
//   }
// }