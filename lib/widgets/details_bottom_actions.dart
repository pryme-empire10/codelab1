import 'package:codelab1/consts/colors.dart';
import 'package:flutter/material.dart';

class DetailsBottomActions extends StatelessWidget {
  const DetailsBottomActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 20,
      ),
      child: Row(
        children: [
          Expanded(
            child: Material(
              borderRadius: BorderRadius.circular(15.0),
              color: mainColor,
              child: InkWell(
                highlightColor: Colors.white.withOpacity(0.2),
                splashColor: Colors.white.withOpacity(0.2),
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(21.0),
                  child: const Text(
                    'Book Now',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10.0),
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
                border: Border.all(color: mainColor, width: 2.0)),
            child: const Icon(
              Icons.turned_in_not,
              color: mainColor,
              size: 25,
            ),
          )
        ],
      ),
    );
  }
}
