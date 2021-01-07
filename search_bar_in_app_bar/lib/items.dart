class Student {
  String name;
  String id;

  Student({this.name, this.id});
}

class AllItems {
  List<Student> _myList = [
    Student(name: 'Hadiuzzaman', id: '170201065'),
    Student(name: 'Shaiduzzaman', id: '1234322'),
    Student(name: 'Fariha Sultana', id: '170201025'),
    Student(name: 'Mantasha Mustarin', id: '160201016'),
    Student(name: 'Fahima Akter', id: '170201049'),
    Student(name: 'Rakibuzzaman', id: '170201011'),
    Student(name: 'Ashrafi Akter', id: '120101032'),
  ];

   List<Student> get getList=>_myList;
}
