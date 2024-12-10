import 'package:flutter/material.dart';
import 'package:myproject/Models/person.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myproject/screen/addform.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: data[index].job.color),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
                  padding: const EdgeInsets.all(40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data[index].name,
                            style: GoogleFonts.kanit(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Age ${data[index].age} have job : ${data[index].job}",
                            style: GoogleFonts.kanit(fontSize: 15),
                          )
                        ],
                      ),
                      Image.asset(
                        data[index].job.image,
                        width: 70,
                        height: 70,
                      )
                    ],
                  ));
            },
          ),
        ),
        SizedBox(
          width: 200,
          height: 200,
          child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const Addform()));
              },
              icon: const Icon(
                Icons.add,
                size: 80,
                color: const Color.fromARGB(200, 254, 193, 9),
              )),
        )
      ],
    );
  }
}
