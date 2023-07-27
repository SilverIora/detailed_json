import 'package:design/widgets/custom_appbar/custom_appbar_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  //TODO Height otomatik ayarlanacak
  Size get preferredSize => const Size.fromHeight(64);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CustomAppBarController(),
      child: Consumer<CustomAppBarController>(builder: _buildBody),
    );
  }

  Widget _buildBody(
      BuildContext context, CustomAppBarController controller, Widget? child) {
    return AppBar(
      backgroundColor: Colors.purple.shade300,
      title: Text('json data title'),
      centerTitle: true,
      //TODO JSON datadan gelen titlea göre icon değişimi olacak
      actions: [
        Container(
          width: 64,
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: controller.appbarImage,
        )
      ],
    );
  }
}
