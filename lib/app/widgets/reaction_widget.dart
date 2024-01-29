import 'package:flutter/material.dart';

class ReactionWidget extends StatelessWidget {
  final IconData iconData;
  final int counter;

  const ReactionWidget({
    super.key,
    required this.iconData,
    required this.counter,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      padding: const EdgeInsets.all(3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            iconData,
            size: 20,
          ),
          const SizedBox(
            width: 5,
          ),
          Text('$counter'),
        ],
      ),
    );
  }
}
