import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamc_app/modules/quran/quran_details.dart';
import 'package:islamc_app/modules/quran/quran_list_view.dart';

class QuranView extends StatelessWidget {
  QuranView({super.key});

  final List<String> surNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset(
          "assets/images/qur2an_screen_logo.png",
          scale: 1.2,
        ),
        const Divider(
          thickness: 2,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                "رقم السورة",
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge,
              ),
            ),
            Container(
              height: 40,
              child: const VerticalDivider(
                thickness: 2,
              ),
            ),
            Expanded(
              child: Text(
                "اسم السورة",
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ],
        ),
        const Divider(
          thickness: 2,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.pushNamed(context,QuranDetails.routeName,
                arguments:  SuraData(
                  suraName: surNames[index],
                  suraNumber: (index + 1).toString(),

                ),);
              },
              child: QuranListView(

                data: SuraData(
                  suraName: surNames[index],
                  suraNumber: (index + 1).toString(),

                ),
              ),
            ),
            itemCount: surNames.length,
          ),
        ),
      ],
    );
  }
}

class SuraData {
  final String suraName;
  final String suraNumber;

  SuraData({required this.suraName, required this.suraNumber});
}
