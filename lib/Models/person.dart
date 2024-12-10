
import 'package:flutter/material.dart';

enum Job { Doctor(title: "Doctor",image: "assets/images/pic2.png",color: Colors.white), Teacher(title: "Teacher",image: "assets/images/pic6.png" ,color : Colors.green), Nurse(title: "Nurse",image: "assets/images/pic3.png", color : Colors.pink), Police(title: "Police",image: "assets/images/pic4.png", color : Colors.blue);
  const Job({required this.title,required this.image,required this.color});
  final String title;
  final String image;
  final Color  color;
}

class Person {
  Person({required this.name, required this.age, required this.job});
  String name;
  int age;
  Job job;
}

List<Person> data = [

];
