import 'package:flutter/material.dart';
import 'package:get/get.dart';

class About extends StatelessWidget {
  const About({super.key});

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
          title: const Text("من نحن",
              style: TextStyle(
                  color: Color(0xFF061D83), fontWeight: FontWeight.bold)),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Text(
          'راديو مصر علي الهوا مبني علي الشباب كل فريق العمل ما بين 16 سنه ل 36 سنه هدفنا إننا نقدر نوصل صوت الشباب للناس طريقة تفكيرهم , تصرفاتهم . كلامهم , أحلامهم , و كل شئ بيشغل كل شاب و بنت في الوقت الحالي في مصر و العالم العربي بأسلوب عصري متحضرنخاطب بيه كل الأعمار من 6 سنين حتى 60 سنه و إننا نقدم إعلام جدي  غير خالي من المرح . راديو مصر علي الهوا بيتكلم في كل حاجه تخص الشباب في مصر و الوطن العربي و مش بس الشباب و كمان الكبار لكن بفكر شبابي و هدفنا الرئيسي هوا توفير حلقة الوصل المفقودة بين الشباب و الكبار , بنتكلم في السياسة , مشاكل الحياة , الحب , الرياضة , الفن , التكنولوجيا , إيه الصح اللي ممكن نعمله و إيه الغلط اللي مينفعش يتعمل , أزاي نقدر ندخل أفكار جديدة لمجتمعنا متناسبة مع تقاليدناأزاي إن أحنا نقدر نبني جيل قادر علي محاكاة العصر , بيفكر في مستقبله و برضه عايش حياته قادر انه يفيد نفسه و أهله و بلده ',
          textDirection: TextDirection.rtl,
        ),
      ),
    );
  }
}
