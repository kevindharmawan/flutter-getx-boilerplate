import 'package:flutter/material.dart';
import 'package:boilerplate/shared/bases/base_page.dart';
import 'package:boilerplate/utils/device/sizing.dart';

abstract class BaseStateful<T extends StatefulWidget> extends State<T>
    implements BasePage {
  @override
  void initState() {
    super.initState();
    init();
  }

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
