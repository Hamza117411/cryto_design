import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:food/constant/palette.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class cryptoapp extends StatefulWidget {
  @override
  _cryptoappState createState() => _cryptoappState();
}
class _cryptoappState extends State<cryptoapp> {


  @override
  Widget build(BuildContext context) {
    final List<Color> color = <Color>[];
    color.add(Colors.red[50]);
    color.add(Colors.red[200]);
    color.add(Colors.red);
    final List<double> stops = <double>[];
    stops.add(0.0);
    stops.add(0.5);
    stops.add(1.0);
    final LinearGradient gradientColors =
    LinearGradient(colors: color, stops: stops);
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(delegate: SliverChildListDelegate([
            SizedBox(
              height: 30,
            ),
            Container(
            //  color: Colors.white,
              height: 120,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text("Current Balance",style:  TextStyle(
                                  color: Colors.white60,
                                  fontSize: 12,

                              ),),
                            ),
                            Text("\$69,269.42",style: TextStyle(
                                color: Colors.white,
                                fontSize: 18
                            )
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right:45.0, top: 5),
                              child: Text("\$3,027.98",style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 10
                              )),
                            ),

                          ],
                        ),
                     Column(
                       children: <Widget>[
                         Padding(
                           padding: const EdgeInsets.all(5.0),
                           child: Container(
                             width: 100,
                             decoration: BoxDecoration(
                                 color: Colors.white30,
                               borderRadius: BorderRadius.circular(10)
                             ),

                             padding: EdgeInsets.all(5),
                             child: Row(
                               children: <Widget>[
                                 Icon(Icons.arrow_drop_down,color: Colors.red,),
                                 Text("4.19%")
                               ],
                             ),
                           ),
                         ),
                       ],
                     ),

                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.white30,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            padding: EdgeInsets.all(5),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.multiline_chart,color: Colors.white,),
                                Text("Line chart")
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(

                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.white30,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            padding: EdgeInsets.all(5),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.pie_chart,color: Colors.white30,),
                                Text("pie chart")
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(

                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.white30,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            padding: EdgeInsets.all(5),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.show_chart,color: Colors.white30,),
                                Text("statistics")
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                height: 250,
          child: SfCartesianChart(
          series: <ChartSeries>[
          // Renders area chart
          AreaSeries<SalesData, double>(
          dataSource: chartData,
          xValueMapper: (SalesData sales, _) => sales.year,
              yValueMapper: (SalesData sales, _) => sales.sales,
              gradient: gradientColors
          )
        ]
      )
            ),
            Container(
              height: 50,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right:220.0,bottom: 8),
                    child: Text("Your Assets",style: TextStyle(fontSize: 16,color: Colors.white),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[

                      Padding(
                        padding: const EdgeInsets.only(left:25.0),
                        child: Text("Asset",style: TextStyle(color: Colors.white30),),
                      ),
                      Text("price",style: TextStyle(color: Colors.white30),),
                      Text("Holding",style: TextStyle(color: Colors.white30),)
                    ],
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.white30,
              thickness: 1,
              height: 1,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading:  CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.teal,
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Bitcoin",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        Text(
                          "\$34429.21",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        Text(
                          "\$68858.21",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),

                      ],
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "BTC",
                          style: fontstyle(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right:50.0),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.arrow_drop_down,color: Colors.red,),
                              Text("3.88%",style: fontstyle(),)
                            ],
                          ),
                        ),
                        Text(
                          "2B",
                          style: fontstyle(),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading:  CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.teal,
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Bitcoin",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        Text(
                          "\$34429.21",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        Text(
                          "\$68858.21",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),

                      ],
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "BTC",
                          style: fontstyle(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right:50.0),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.arrow_drop_down,color: Colors.red,),
                              Text("3.88%",style: fontstyle(),)
                            ],
                          ),
                        ),
                        Text(
                          "2B",
                          style: fontstyle(),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:18.0),
                    child: MaterialButton(
                      onPressed: (){},
                      color: Colors.blue,
                      minWidth: 300,
                      child: Text("Add New Assets",style: TextStyle(color: Colors.white,fontSize: 14),),
                    ),
                  ),
                ],
              ),
            )
          ]
    )
    ),

        ],
      ),
    );
  }
}



fontstyle() {
  return TextStyle(
    color: Colors.white,
    fontSize: 11
  );
}

class SalesData {
  SalesData(this.year, this.sales);
  final double year;
  final double sales;
}

final List<SalesData> chartData = [
  SalesData(2010, 250),
  SalesData(2011, 100),
  SalesData(2012, 40),
  SalesData(2012, 500),
  SalesData(2012, 600),
  SalesData(2012, 500),
  SalesData(2013, 12),
  SalesData(2013, 72),
  SalesData(2014, 67),
  SalesData(2016, 10),
  SalesData(2020, 120),
  SalesData(2014, 16),
  SalesData(2016, 48),
  SalesData(2020, 20),
];