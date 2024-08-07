import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamc_app/modules/hadeth/hadeth_view_details.dart';

class HadethView extends StatefulWidget {
  HadethView({Key? key}) : super(key: key);

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  late Future<List<HadithData>> futureDataList;

  @override
  void initState() {
    super.initState();
    futureDataList = loadData();
  }

  Future<List<HadithData>> loadData() async {
    try {
      String content = await rootBundle.loadString("assets/files/ahadeth.txt");
      List<String> hadith = content.split("#");
      List<HadithData> dataList = [];
      for (String singleHadith in hadith) {
        String trimmedHadith = singleHadith.trim();
        int titleLength = trimmedHadith.indexOf("\n");
        if (titleLength != -1) {
          String title = trimmedHadith.substring(0, titleLength);
          String body = trimmedHadith.substring(titleLength + 1);
          dataList.add(HadithData(title: title, body: body));
        }
      }
      return dataList;
    } catch (e) {
      print("Error loading data: $e");
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return FutureBuilder<List<HadithData>>(
      future: futureDataList,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text("Error loading data"));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text("No data available"));
        } else {
          List<HadithData> dataList = snapshot.data!;

          return Container(
            child: Column(
              children: [
                Image.asset("assets/images/hadeth_logo.png", scale: 1.2),
                const Divider(thickness: 2),
                Text("الاحاديث", style: theme.textTheme.bodyLarge),
                const Divider(thickness: 2),
                SizedBox(height: 5),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ListView.builder(
                      itemCount: dataList.length,
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            HadethViewDetails.routename,
                            arguments: dataList[index],
                          );
                        },
                        child: Text(
                          textAlign: TextAlign.center,
                          dataList[index].title,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        }
      },
    );
  }
}

class HadithData {
  final String title;
  final String body;

  HadithData({required this.title, required this.body});
}
