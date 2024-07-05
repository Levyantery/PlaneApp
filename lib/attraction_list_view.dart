import 'package:flutter/material.dart';
import 'package:planeapp/attraction_card.dart';
import 'package:planeapp/attraction_model.dart';


class AttractionListView extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.only(left: 10),
        itemCount: attractions.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          
          AttractionModel currentAttraction = attractions[index];
          return AttractionCard(attractionModel: currentAttraction);

        }
      )
    );
  }
}