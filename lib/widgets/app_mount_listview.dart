import 'package:codelab1/screens/details_screen.dart';
import 'package:flutter/material.dart';

import '../consts/mount_items.dart';
import '../model/mount_model.dart';

class AppMountListView extends StatelessWidget {
  const AppMountListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.0,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: mountItems.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          MountModel currentMount = mountItems[index];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailsScreen(
                  currentMount,
                ),
              ));
            },
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.all(10.0),
              width: 150.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                    image: NetworkImage(currentMount.path), fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    currentMount.name,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    currentMount.location,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
