import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class EquatableTesting extends StatelessWidget {
  const EquatableTesting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
      onPressed: () {
        //equatable example code
        
        Person p1 = Person(name: 'John', age: 30);
        Person p2 = Person(name: 'John', age: 30);
        print(p1.hashCode.toString() == p2.hashCode.toString());
        print(p1.hashCode.toString());
        print(p2.hashCode.toString());
      },
      child: const Icon(Icons.add),
    ));
  }
}

class Person extends Equatable {
  final String name;
  final int age;

  Person({required this.name, required this.age});

  @override
  List<Object?> get props => [name, age];
}
