import 'package:flutter/material.dart';
import 'package:food/constant/SizeConfig.dart';
import 'package:food/constant/padding.dart';
import 'package:food/constant/palette.dart';


class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: backgroundColor,
      body: Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight * 0.1,
        //color: Colors.yellow,
        child: Row(
          children: [
            Container(
                width: SizeConfig.screenWidth * 0.14,
                height: SizeConfig.screenHeight * 0.1,
//                color: Colors.green,
                child: Container(
                  width: SizeConfig.screenWidth * 0.05,
                  height: SizeConfig.screenHeight * 0.05,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                )),
            Container(
              width: SizeConfig.screenWidth * 0.35,
              height: SizeConfig.screenHeight * 0.1,
              //            color: Colors.orange,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding, vertical: kDefaultPadding * 6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Bitcoin",
                      style: new TextStyle(
                          color: kTextColor,
                          fontSize: getProportionateScreenHeight(20),
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: getProportionateScreenWidth(25),
                          height: getProportionateScreenHeight(20),
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                              child: Text("1",
                                  style: new TextStyle(
                                    color: kTextColor,
                                    fontSize: getProportionateScreenHeight(14),
                                    fontWeight: FontWeight.bold,
                                  ))),
                        ),
                        Text(
                          "BTC",
                          style: new TextStyle(
                              color: kTextLightColor,
                              fontSize: getProportionateScreenHeight(16),
                              fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.red,
                            ),
                            Text(
                              "1.79%",
                              style: new TextStyle(
                                  color: kTextLightColor,
                                  fontSize: getProportionateScreenHeight(16),
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
