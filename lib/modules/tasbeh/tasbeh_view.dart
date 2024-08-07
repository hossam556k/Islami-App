import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TasbehView extends StatefulWidget {
  const TasbehView({super.key});

  @override
  State<TasbehView> createState() => _TasbehViewState();
}

class _TasbehViewState extends State<TasbehView> {
  int count = 33; // عداد التسبيحات
  double rotation = 0; // زاوية التدوير
  int textIndex = 0; // فهرس النصوص

  final List<String> texts = [
    "سبحانه الله",
    "الله أكبر",
    "حمد الله",
  ];

  void _incrementCount() {
    setState(() {
      if (count > 0) {
        count--;
        rotation += 0.1; // زيادة زاوية التدوير قليلاً
      } else {
        // تغيير النص عند الوصول إلى الصفر
        textIndex = (textIndex + 1) % texts.length;
        count = 33; // إعادة تعيين العداد إلى 30
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 50),
          margin: EdgeInsets.only(),
          child: Image.asset(
            "assets/images/head_sebha_logo.png",
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 30),
          child: AnimatedRotation(
            turns: rotation,
            duration: Duration(milliseconds: 200), // مدة التدوير
            child: Image.asset(
              "assets/images/body_sebha_logo.png",
              scale: 1,
            ),
          ),
        ),
        Divider(
          color: Colors.transparent,
        ),
        Text(
          "عدد التسبيحات",
          style: theme.textTheme.bodyLarge,
        ),
        Container(
          margin: EdgeInsets.only(top: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(0xFFB7935F),
          ),
          padding: EdgeInsets.all(14),
          child: Text("$count"),
        ),
        Container(
          margin: EdgeInsets.only(top: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color(0xFFB7935F),
          ),
          padding: EdgeInsets.all(14),
          child: InkWell(
            onTap: _incrementCount, // عند الضغط على النص
            child: Text(
              texts[textIndex], // تغيير النص بناءً على الفهرس
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ),
      ],
    );
  }
}
