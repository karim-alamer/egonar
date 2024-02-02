import 'package:flutter/material.dart';
import 'package:nego/detailes.dart';

class PoadcastPage extends StatelessWidget {
  PoadcastPage({super.key});

  final List<Map<String, String>> cardData = [
    {
      'title': 'الشعراوي',
      'date': '12-1-2023 ',
      'day': 'السبت',
      'image': 'assets/images/img1.jpeg',
    },
    {
      'title': 'الشعراوي',
      'date': '12-1-2023 ',
      'day': 'الاحد',
      'image': 'assets/images/img1.jpeg',
    },
    {
      'title': 'الشعراوي',
      'date': '12-1-2023 ',
      'day': 'الاثنين',
      'image': 'assets/images/img1.jpeg',
    },
    {
      'title': 'الشعراوي',
      'date': '12-1-2023 ',
      'day': 'الاثنين',
      'image': 'assets/images/img1.jpeg',
    },
    {
      'title': 'الشعراوي',
      'date': '12-1-2023 ',
      'day': 'الاثنين',
      'image': 'assets/images/img1.jpeg',
    },
    {
      'title': 'الشعراوي',
      'date': '12-1-2023 ',
      'day': 'الاثنين',
      'image': 'assets/images/img1.jpeg',
    },
    {
      'title': 'الشعراوي',
      'date': '12-1-2023 ',
      'day': 'الثلاثاء',
      'image': 'assets/images/img1.jpeg',
    },
    {
      'title': 'الشعراوي',
      'date': '12-1-2023 ',
      'day': 'الثلاثاء',
      'image': 'assets/images/img1.jpeg',
    },
  ];
  List<Map<String, String>> fitercardData = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8),
      height: 600,
      child: Column(
        children: [
          const SizedBox(height: 10),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(12.0),
              child: GridView.builder(
                itemCount: fitercardData.isEmpty
                    ? cardData.length
                    : fitercardData.length, // Use filtered cards
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  if (fitercardData.isEmpty) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyWidget(),
                          ),
                        );
                      },
                      child: Container(
                        width: 150,
                        child: Card(
                          color: Colors.white,
                          elevation: 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(9),
                                child: Image.asset(
                                  'assets/images/img1.jpeg',
                                  height: 100,
                                  width: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "الشعراوي",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Icon(
                                        Icons.calendar_month_rounded,
                                        size: 20,
                                        color: Colors.grey,
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        '${cardData[index]['day']}',
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      const SizedBox(width: 4),
                                      const Text(
                                        "12-1-2023",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyWidget(),
                        ),
                      );
                    },
                    child: Container(
                      width: 150,
                      child: Card(
                        color: Colors.white,
                        elevation: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/img1.jpeg',
                              height: 100,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Text(
                                  "الشعراوي",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Text(
                                      "12-1-2023",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const SizedBox(width: 6),
                                    Text(
                                      '${fitercardData[index]['day']}',
                                      style: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const Icon(Icons.calendar_month_outlined),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          if (cardData.isEmpty)
            const Center(
              child: CircularProgressIndicator(),
            ),
        ],
      ),
    );
  }
}
