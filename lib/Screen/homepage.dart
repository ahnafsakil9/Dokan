import 'package:dokan/Properties/app_properties.dart';
import 'package:flutter/material.dart';

import '../export.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appBackground,
      appBar: AppBar(
        backgroundColor: AppColor.fillColorL,
        elevation: 1,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: const Icon(
                Icons.menu,
                color: AppColor.appMainColor,
              ),
            );
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: AppColor.appMainColor,
            ),
          ),
        ],
      ),
      body: const SafeArea(
        child: Center(
          child: Text(
            'Homepage',
            style: AllTextStyle.headerStyle,
          ),
        ),
      ),
      drawer: const CustomDrawer(),
    );
  }
}
