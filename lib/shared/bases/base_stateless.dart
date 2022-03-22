import 'package:flutter/material.dart';
import 'package:boilerplate/shared/bases/base_page.dart';
import 'package:boilerplate/utils/device/sizing.dart';

abstract class BaseStateless extends StatelessWidget implements BasePage {
  const BaseStateless({Key? key}) : super(key: key);

  Widget buildBody(BuildContext context) {
    if (Sizing.isWide()) {
      return buildWide(context);
    }
    return buildNarrow(context);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: buildAppBar(context),
        body: buildBody(context),
        bottomNavigationBar: buildBottomBar(context),
      ),
      onWillPop: onBackPressed,
    );
  }
}
