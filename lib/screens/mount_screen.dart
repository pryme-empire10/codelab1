import 'package:flutter/material.dart';

import '../consts/colors.dart';
import '../widgets/app_bottom_bar.dart';
import '../widgets/app_categorylist.dart';
import '../widgets/app_header.dart';
import '../widgets/app_mount_listview.dart';
import '../widgets/app_search.dart';

class MountScreen extends StatelessWidget {
  const MountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: mainColor),
        title: const Center(
          child: Icon(
            Icons.terrain,
            color: mainColor,
            size: 40.0,
          ),
        ),
        actions: const [
          SizedBox(
            height: 40,
            width: 40,
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          color: mainColor,
          alignment: Alignment.bottomRight,
          child: const Icon(
            Icons.terrain,
            color: Colors.white,
            size: 80,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          AppHeader(),
          AppSearch(),
          Expanded(
            child: AppMountListView(),
          ),
          AppCategoryList(),
          AppBottomBar()
        ],
      ),
    );
  }
}
