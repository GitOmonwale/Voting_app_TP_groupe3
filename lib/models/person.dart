class Person {
  String? name;
  String? surname;
  String? bibliography;
  String? photo;
   

  Person({this.name, this.surname, this.bibliography,this.photo});

  @override
  String toString() {
    return 'Person{name: $name, surname: $surname, bibliography: $bibliography, photo:$photo}';
  }
}
