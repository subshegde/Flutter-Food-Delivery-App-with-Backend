import 'package:flutter/material.dart';

class DescriptionBox extends StatelessWidget {
  const DescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var myPrimaryTextStyle = TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    var mySecondaryTextStyle = TextStyle(color: Theme.of(context).colorScheme.primary);

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(8)
      ),
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.only(left:25,right: 25,bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        // delivery charge,
        Column(
          children: [
            Text('\$0.99',style: myPrimaryTextStyle,),
            Text('Delivery charge',style: mySecondaryTextStyle,),
          ],
        ),
        Column(
          children: [
            Text('15-25 mins',style: myPrimaryTextStyle,),
            Text('Delivery Time',style: mySecondaryTextStyle,),
          ],
        )

        // time
      ],),
    );
  }
}