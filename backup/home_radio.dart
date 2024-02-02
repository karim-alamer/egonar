import 'package:flutter/material.dart';
import 'package:nego/detailes.dart';

class HomeRadioPage extends StatelessWidget {
  const HomeRadioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "البرامج السابقة ",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Color(0xFF061D83)),
        ),
        const SizedBox(
          height: 16,
        ),
        RowofProgramers(context),
        const SizedBox(
          height: 16,
        ),
        const Text(
          "البرامج التالية ",
          style: TextStyle(
              color: Color(0xFF061D83),
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'cairo'),
        ),
        const SizedBox(
          height: 16,
        ),
        RowofProgramers(context),
        const SizedBox(
          height: 16,
        ),
        const Text(
          "الطقس",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Color(0xFF061D83)),
        ),
      ],
    );
  }
}

Widget RowofProgramers(BuildContext context) {
  return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: List.generate(5, (index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyWidget(),
                ),
              );
            },
            child: Card(
              elevation: 0,
              margin: const EdgeInsets.only(right: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/img1.jpeg',
                    height: 100,
                  ),
                  // Image.network(
                  //   'https://placekitten.com/200/200',
                  //   height: 150,
                  //   fit: BoxFit.cover,
                  // ),
                  const Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "الشعراوي",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_month_outlined,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "12-1-2023",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ));
}
