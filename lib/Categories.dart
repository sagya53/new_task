import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  Map<String, double> dataMap = {
    "Blocks": 2,
    "Clouds": 3,
    "Prisms": 3,
  };
  final colorList = <Color>[
    const Color(0xff6c5ce7),
    const Color(0xfffd79a8),
    const Color(0xff0984e3),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Categories",style: TextStyle(color: Color(0xFF000000)),),
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        // actions: [
        //   Icon(Icons.add),
        //   SizedBox(
        //     width: MediaQuery.of(context).size.width * 0.05,
        //   )
        // ],
      ),
      drawer: Drawer(),
      body: Center(
        child: Column(
          
          children: [
            SizedBox(
              height: 10,
            ),
            Icon(Icons.announcement_rounded),
            SizedBox(
              height: 10,
            ),
            PieChart(
              dataMap: dataMap,
              animationDuration: Duration(milliseconds: 800),
              chartLegendSpacing: 32,
              chartRadius: MediaQuery.of(context).size.width / 2.5,
              colorList: colorList,
              initialAngleInDegree: 0,
              chartType: ChartType.ring,
              ringStrokeWidth: 20,
              centerText: "8",
              legendOptions: LegendOptions(
                showLegendsInRow: false,
                legendPosition: LegendPosition.bottom,
                showLegends: true,
                legendShape: BoxShape.rectangle,
                legendTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              chartValuesOptions: ChartValuesOptions(
                showChartValueBackground: false,
                showChartValues: true,
                showChartValuesInPercentage: false,
                // showChartValuesOutside: false,
                showChartValuesOutside: false,
                decimalPlaces: 0,
              ),
              // gradientList: ---To add gradient colors---
              // emptyColorGradient: ---Empty Color gradient---
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width * 0.24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Color(0xff6c5ce7),
                        ),

                      ),
                      Text("Blocks",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black),),
                      Text("2 Things",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey),),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width * 0.24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Color(0xfffd79a8),

                        ),
                      ),
                      Text("Clouds",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black),),
                      Text("3 Things",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey),),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width * 0.24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Color(0xff0984e3),
                        ),
                      ),
                      Text("Prisms",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black),),
                      Text("3 Things",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey),),

                    ],
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
