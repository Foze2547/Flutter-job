import 'package:flutter/material.dart';
import 'package:myproject/Models/person.dart';
import 'package:myproject/main.dart';

class Addform extends StatefulWidget {
  const Addform({super.key});

  @override
  State<Addform> createState() => _AddformState();
}

class _AddformState extends State<Addform> {

  final _formkey = GlobalKey<FormState>();
  String _name = '';
  int _age = 1;
  Job _job = Job.Doctor;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Title",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Foze My App"),
          backgroundColor: const Color.fromARGB(255, 0, 140, 255),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                TextFormField(
                  maxLength: 20,
                  decoration: const InputDecoration(
                    label: Text("Name",style: TextStyle(fontSize: 20),)
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter yout name";
                    } return null;
                  },
                  onSaved: (value) {
                    _name = value!;
                  },
                )
                ,TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text("Age",style: TextStyle(fontSize: 20),)
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter yout age";
                    } return null;
                  },
                  onSaved: (Value) {
                    _age = int.parse(Value.toString());
                  },
                ),
                DropdownButtonFormField(
                  value : _job,
                  decoration: const InputDecoration(
                    label: Text("Job",style: TextStyle(fontSize: 20),)
                  ),
                  items: Job.values.map((Key){
                    return DropdownMenuItem(
                      value: Key,
                      child: Text(Key.title)
                    );
                  }).toList(),
                  onChanged: (value){
                    setState(() {
                      _job = value!;
                    });
                  }),
                const SizedBox(height: 20,),
                FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    fixedSize: Size(100, 50)
                  ),
                  onPressed: (){
                    _formkey.currentState!.validate();
                    _formkey.currentState!.save();
                    data.add(
                      Person(name: _name, age: _age, job: _job)
                    );
                    _formkey.currentState!.reset();
                    Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (ctx) => const MyApp()));
                  }, 
                  child: const Text("Confirm"))
              ],
            )),
        )
      ),
    );
  }
}