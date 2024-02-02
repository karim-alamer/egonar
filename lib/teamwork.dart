import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nego/detailes.dart';

class TeamWorkPage extends StatefulWidget {
  TeamWorkPage({Key? key}) : super(key: key);

  @override
  State<TeamWorkPage> createState() => _TeamWorkPageState();
}

class _TeamWorkPageState extends State<TeamWorkPage> {
  final List<String> days = [
    'الجمعة',
    'الخميس',
    'الاربعاء',
    'الثلاثاء',
    'الاثنين',
    'الاحد',
    'السبت',
  ];

  late String selectedDay;

  @override
  void initState() {
    super.initState();
    selectedDay = '';
  }

  final List<Map<String, String>> cardData = [
    {
      'title': 'الشعراوي',
      'image': 'assets/images/img1.jpeg',
    },
    {
      'title': 'الشعراوي',
      'image': 'assets/images/img1.jpeg',
    },
    {
      'title': 'الشعراوي',
      'image': 'assets/images/img1.jpeg',
    },
    {
      'title': 'الشعراوي',
      'image': 'assets/images/img1.jpeg',
    },
  ];
  List<Map<String, String>> fitercardData = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            leadingWidth: 50,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.arrow_back_ios_new_rounded)),
            ),
            title: const Text("فريق العمل",
                style: TextStyle(
                    color: Color(0xFF061D83), fontWeight: FontWeight.bold)),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 8),
          height: 600,
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.all(5),
                  child: Form(
                    // key: _formKey,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "ابحث هنا",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide
                              .none, // Set border radius to make it rounded
                        ),
                        constraints: const BoxConstraints(),
                        contentPadding: EdgeInsets.zero,
                        // border: InputBorder.none,

                        filled: true,
                        fillColor: const Color(0xFFF3F4F6),

                        // fillColor: Colors.grey.withOpacity(0.2),
                        prefixIcon: const Icon(Icons.search),
                      ),
                    ),
                  )),
              const SizedBox(height: 10),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  child: GridView.builder(
                    itemCount: fitercardData.isEmpty
                        ? cardData.length
                        : fitercardData.length, // Use filtered cards
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
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
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "كريم الامير ",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
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
                                        const Icon(
                                            Icons.calendar_month_outlined),
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
        ));
  }
}
