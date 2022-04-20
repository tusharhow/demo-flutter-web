import 'package:flutter/material.dart';
import 'package:flutter_demo_web/screens/user_list_table/user_list_table_desktop.dart';
import 'package:flutter_demo_web/screens/user_list_table/user_list_table_mobile.dart';
import 'package:getwidget/getwidget.dart';

import '../components/customer_invoice_component.dart';
import '../components/invoice_list_header_label.dart';
import '../components/search_field_component.dart';

class UserListTable extends StatefulWidget {
  UserListTable({Key? key}) : super(key: key);

  @override
  State<UserListTable> createState() => _UserListTableState();
}

class _UserListTableState extends State<UserListTable> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: ((context, constraints) {
          if (constraints.maxWidth < 600 || constraints.maxHeight < 715) {
            return UserListTableMobile();
          } else {
            return UserListTableDesktop();
          }
        
        }),
      ),
    );
  }
}
