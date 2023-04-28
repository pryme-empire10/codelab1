import 'package:flutter/material.dart';

class AppBottomBarItem {
  IconData? icon;
  bool isSelected;
  String label;

  AppBottomBarItem({
    this.icon,
    this.isSelected = false,
    this.label = '',
  });
}
