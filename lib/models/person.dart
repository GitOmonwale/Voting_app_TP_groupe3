class Person {
  String? name;
  String? surname;
  String? bibliography;
   
   

  Person({this.name, this.surname, this.bibliography});

  @override
   Map<String, dynamic> toJson() {
    return {
      'name': name,
      'surname': surname,
      'bibliography': bibliography,
    };
  }
}
