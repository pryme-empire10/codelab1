import 'package:codelab1/model/app_bottom_bar_item_model.dart';
import 'package:flutter/material.dart';

import '../consts/colors.dart';

class AppBottomBar extends StatefulWidget {
  const AppBottomBar({super.key});

  @override
  State<AppBottomBar> createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar> {
  List<AppBottomBarItem> barItems = [
    AppBottomBarItem(icon: Icons.home, label: 'Home', isSelected: true),
    AppBottomBarItem(icon: Icons.explore, label: 'Explore', isSelected: false),
    AppBottomBarItem(
        icon: Icons.turned_in_not, label: 'Tag', isSelected: false),
    AppBottomBarItem(
        icon: Icons.person_outline, label: 'Profile', isSelected: false)
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 10.0,
          offset: Offset.zero,
        )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          barItems.length,
          (index) {
            AppBottomBarItem currentBarItem = barItems[index];
            Widget barItemWidget;

            if (currentBarItem.isSelected) {
              barItemWidget = Container(
                padding: const EdgeInsets.only(
                    left: 15.0, top: 5.0, bottom: 5.0, right: 15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: mainColor,
                ),
                child: Row(
                  children: [
                    Icon(
                      currentBarItem.icon,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      currentBarItem.label,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              );
            } else {
              barItemWidget = IconButton(
                onPressed: () {
                  setState(() {
                    for (var item in barItems) { 
                      item.isSelected = item == currentBarItem;
                    }
                  });
                },
                icon: Icon(currentBarItem.icon,color: Colors.grey,),
              );
            }
            return barItemWidget;
          },
        ),
      ),
    );
  }
}
