import 'package:boilerplate/shared/appbars/empty_app_bar.dart';
import 'package:boilerplate/shared/bases/base_stateless.dart';
import 'package:flutter/material.dart';

class HomeView extends BaseStateless {
  const HomeView({Key? key}) : super(key: key);

  @override
  void init() {}

  @override
  PreferredSizeWidget buildAppBar(BuildContext context) {
    return EmptyAppBar();
  }

  @override
  Widget? buildBottomBar(BuildContext context) {
    return null;
  }

  @override
  Widget buildNarrow(BuildContext context) {
    return Container();
  }

  @override
  Widget buildWide(BuildContext context) {
    return buildNarrow(context);
  }

  @override
  Future<bool> onBackPressed() async {
    return true;
  }
}
