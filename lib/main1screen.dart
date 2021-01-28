import 'package:flutter/material.dart';
import 'package:food/screens/second_screen.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class main1 extends StatefulWidget {
  @override
  _main1State createState() => _main1State();
}

class _main1State extends State<main1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(delegate: SliverChildListDelegate([
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                    decoration:decorate(),
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 4),
                    child: Icon(Icons.star_border,color: Colors.white,)),
                Container(
                  decoration:decorate(),
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 8),

                    child: Text("USD",style:style())),
                Container(
                  decoration:decorate(),
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  child: Row(
                    children: <Widget>[
                      Text("Sort by Rank",style:style()),
                      Icon(Icons.arrow_drop_up,color: Colors.white,)
                    ],
                  ),
                ),
                Container(
                    decoration:decorate(),
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 8),
                    child: Text("%(1h)",style:style())),
              ],
            )
          ])),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, int index) {
            return Padding(
              padding: const EdgeInsets.only(top: 38.0),
              child: Container(
                height: MediaQuery.of(context).size.height*0.1,
             //   color: Colors.pink,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 5,top: 10),
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.teal,
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 40.0, top: 10),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top:5.0),
                                child: Text(
                                  "Bitcoin",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 3.0, right: 3),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white30,
                                    ),
                                    padding: EdgeInsets.all(3),
                                    child: Text(
                                      "1",
                                      style: fontstyle(),
                                    ),
                                  ),
                                ),
                                Text(
                                  "BTC",
                                  style: fontstyle(),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.red,
                                ),
                                Text(
                                  "1.79 %",
                                  style: fontstyle(),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:10.0,left: 5),
                      child: Container(
                          //height: 150,
                          //width: MediaQuery.of(context).size.width/3,
                          child: SizedBox(
                        height: 50,
                        width: 80,
                        child: SfCartesianChart(

                          enableAxisAnimation: false,
                          primaryYAxis:NumericAxis(
                              // X axis is hidden now
                              isVisible: false
                          ),
                            primaryXAxis: NumericAxis(
                              // X axis is hidden now
                                isVisible: false
                            ),
                            //  title: ChartTitle(text: "fast line series",backgroundColor: Colors.blue,borderWidth: 10,alignment: ChartAlignment.near),
                            series: <ChartSeries>[
                              // Renders fast line chart
                              FastLineSeries<SalesData, double>(
                                  //  animationDuration: 10,
                                  emptyPointSettings: EmptyPointSettings(
                                      mode: EmptyPointMode.zero,
                                      borderColor: Colors.blue),
                                  color: Colors.purple,
                                  dataSource: chartData,
                                  xValueMapper: (SalesData sales, _) =>
                                      sales.year,
                                  yValueMapper: (SalesData sales, _) =>
                                      sales.sales)
                            ]),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 10),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "\$34429.1",
                            style: fontstyle(),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.only(left: 80.0),
                          //   child: Icon(
                          //     Icons.star_border,
                          //     color: Colors.white38,
                          //   ),
                          // ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5.0, top: 10),
                            child: Text(
                              "Mcap\$640.35Bn",
                              style: fontstyle(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.star_border,color: Colors.white30,size: 18,),

                  ],
                ),

                //  isThreeLine: true,
                // leading: CircleAvatar(
                //   radius: 18,
                //   backgroundColor: Colors.teal,
                // ),
                // title: Row(
                //   children: <Widget>[
                //     Text(
                //       "Bitcoin",
                //       style: TextStyle(color: Colors.white, fontSize: 12),
                //     ),
                //   ],
                // ),
                // subtitle: Row(
                //   children: <Widget>[
                //     Padding(
                //       padding: const EdgeInsets.only(top:3.0,right: 3),
                //       child: Container(
                //         decoration: BoxDecoration(
                //
                //           borderRadius: BorderRadius.circular(5),
                //           color: Colors.white30,
                //         ),
                //         padding: EdgeInsets.all(3),
                //         child: Text(
                //           "1",
                //           style: fontstyle(),
                //         ),
                //       ),
                //     ),
                //     Text(
                //       "BTC",
                //       style: fontstyle(),
                //     ),
                //     Icon(
                //       Icons.arrow_drop_down,
                //       color: Colors.red,
                //     ),
                //     Text(
                //       "1.79 %",
                //       style: fontstyle(),
                //     ),
                //   ],
                // ),
                // trailing: Column(
                //   children: <Widget>[
                //     Column(
                //       children: <Widget>[
                //         Text(
                //           "\$34429.1",
                //           style: fontstyle(),
                //         ),
                //         // Padding(
                //         //   padding: const EdgeInsets.only(left: 80.0),
                //         //   child: Icon(
                //         //     Icons.star_border,
                //         //     color: Colors.white38,
                //         //   ),
                //         // ),
                //         Padding(
                //           padding: const EdgeInsets.only(right: 5.0,top: 5),
                //           child: Text(
                //             "Mcap\$640.35Bn",
                //             style: fontstyle(),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ],
                // ),
              ),
            );
          }, childCount: 10))
        ],
      ),
    );
  }
}
decorate(){
  return  BoxDecoration(
    color: Colors.white54,
    borderRadius: BorderRadius.circular(15),
  );
}
style(){
  return  TextStyle(fontSize: 14,color: Colors.white);
}