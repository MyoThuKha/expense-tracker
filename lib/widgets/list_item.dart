import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String time;
  final String price;
  const ListItem({super.key,required this.time,required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      color: Colors.grey[350],
        borderRadius: BorderRadius.circular(24),
      ),
      padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(time,style: TextStyle(fontSize: 12,color: Colors.grey[800]),),
          Text(price,style: const TextStyle(fontSize: 24),),
        ],
      ),
    );
  }
}
