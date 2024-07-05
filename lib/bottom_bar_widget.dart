import 'package:flutter/material.dart';
import 'package:planeapp/bottom_bar_model.dart';
import 'package:planeapp/main.dart';


class BottomBarWidget extends StatefulWidget {
  @override
  State<BottomBarWidget> createState() => BottomBarWidgetState();
}

class BottomBarWidgetState extends State<BottomBarWidget> {

  List<BottomBarModel> _bottomBarItems = bottomBarListItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      padding: EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          _bottomBarItems.length, (index) {

            var barItemWidget = _bottomBarItems[index];

            return IconButton(
              icon: Icon(
                barItemWidget.icon, 
                color: barItemWidget.isSelected! ? mainYellow : Colors.grey
              ),
              onPressed: () {
                setState(() {
                  _bottomBarItems.forEach((element) {
                    element.isSelected = element == barItemWidget;
                  });
                });
              }
            );
          }
        )
      )
    );
  }
}