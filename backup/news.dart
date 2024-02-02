import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8),
      height: 600,
      child: ListView(
        children: [
          NewsCard(
            title: 'ما لا تعرفه عن راديو مصر علي الهوا',
            description:
                'راديو مصر علي الهوا إذاعة الكترونية تم انشائها عام 2009 لتصبح احدي اولي الأذاعات الألكترونية الرائدة في الشرق الأوسط تم تأسيسها علي يد الأعلامي/ أكرم مفتاح بمساعدة مجموعة من شباب الجامعات المصرية و بعض المغتربيين و اصحاب الجنسيات الأخري, و كان يقوم المذيعين و المعدين بالأجتماع و التنسيق و اعداد وتنفيذ واذاعة البرامج في عام 2009 من خلال شبكة الأنترنت عبر برنامج سكايب و بعض التطبيقات الاخري و البرمجيات الاذاعية التي تم تنفيذها من قبل اكرم مفتاح تم انشاء اول ستوديو خاص',
          ),
          NewsCard(
            title: 'ما لا تعرفه عن راديو مصر علي الهوا',
            description:
                'بالراديو في عام 2010 في المعادي ثم تم الأنتقال الي مدينة 6 اكتوبر في بداية عام 2011 قام راديو مصر علي الهواء بتغطية كافة الاحداث الخاصة بالثورة المصرية ثورة 25 يناير 2011 و تم اصدار مقال ” صفحة كاملة ”',
          ),
          // Add more NewsCard widgets as needed
        ],
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final String title;
  final String description;

  NewsCard({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(description),
          ),
        ],
      ),
    );
  }
}
