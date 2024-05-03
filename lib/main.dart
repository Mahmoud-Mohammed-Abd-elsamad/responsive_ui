import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/home_layout.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';

void main() {
  runApp(DevicePreview(
    enabled: false,
    builder: (context) => const ResponsiveDashBoard(),
  ),);
}
class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldDKey = GlobalKey();
    return   MaterialApp(
      home: Scaffold(
        key: scaffoldDKey,
        appBar: MediaQuery.sizeOf(context).width < 600 ? AppBar(
          leading: IconButton( onPressed: () {
            scaffoldDKey.currentState!.openDrawer();
          }, icon: const Icon(Icons.menu),),
        ):null,
        drawer:  MediaQuery.sizeOf(context).width < 600  ? const CustomDrawer() : null,
        backgroundColor: Color(0xffE5E5E5),
        body: HomeLayout(),
      ),
    );
  }
}

