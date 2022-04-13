import 'package:flutter/material.dart';
import 'package:flutter_demo_web/components/create_event_banner.dart';
import 'package:flutter_demo_web/components/navigation.dart';
import 'package:flutter_demo_web/responsive/responsive_layout.dart';
import 'package:flutter_demo_web/screens/add_a_product_page.dart';
import 'side_menu_row.dart';

class SideMenuBar extends StatelessWidget {
  const SideMenuBar({
    Key? key,
    required Size size,
  })  : _size = size,
        super(key: key);

  final Size _size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: _size.height * 0.1,
      left: 50,
      child: Column(
        children: [
          Container(
            width: _size.width * 0.15,
            height: _size.height * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(20, 20),
                    blurRadius: 30)
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 50,
                    width: 210,
                    decoration: BoxDecoration(
                      color: Color(0xffFFB83D),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/menu2.png',
                            width: _size.width * 0.03,
                            height: _size.height * 0.03,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'My Store',
                            style: TextStyle(
                              fontSize: _size.width * 0.01,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                SidebarMenuRow(
                  size: _size,
                  onTap: () {},
                  icon: 'assets/images/dash.png',
                  title: 'Dashboard',
                ),
                SizedBox(
                  height: 15,
                ),
                SidebarMenuRow(
                  size: _size,
                  onTap: () {},
                  icon: 'assets/images/sStore.png',
                  title: 'My Store',
                ),
                SizedBox(
                  height: 15,
                ),
                SidebarMenuRow(
                  size: _size,
                  onTap: () {
                    push(context: context, widget: AddProductPage());
                  },
                  icon: 'assets/images/event.png',
                  title: 'Create an Event',
                ),
                SizedBox(
                  height: 15,
                ),
                SidebarMenuRow(
                  size: _size,
                  onTap: () {},
                  icon: 'assets/images/service.png',
                  title: 'Show a Discounted Service',
                ),
                SizedBox(
                  height: 15,
                ),
                SidebarMenuRow(
                  size: _size,
                  onTap: () {},
                  icon: 'assets/images/product.png',
                  title: 'View a Product',
                ),
                SizedBox(
                  height: 15,
                ),
                SidebarMenuRow(
                  size: _size,
                  onTap: () {},
                  icon: 'assets/images/customers.png',
                  title: 'Clients',
                ),
                SizedBox(
                  height: 15,
                ),
                SidebarMenuRow(
                  size: _size,
                  onTap: () {},
                  icon: 'assets/images/orders.png',
                  title: 'My Orders',
                ),
                SizedBox(
                  height: 15,
                ),
                SidebarMenuRow(
                  size: _size,
                  onTap: () {},
                  icon: 'assets/images/withdrawal.png',
                  title: 'Payments',
                ),
                SizedBox(
                  height: 15,
                ),
                SidebarMenuRow(
                  size: _size,
                  onTap: () {},
                  icon: 'assets/images/agenda.png',
                  title: 'Diary',
                ),
                SizedBox(
                  height: 15,
                ),
                SidebarMenuRow(
                  size: _size,
                  onTap: () {},
                  icon: 'assets/images/commerce.png',
                  title: 'Reports',
                ),
                SizedBox(
                  height: 15,
                ),
                SidebarMenuRow(
                  size: _size,
                  onTap: () {},
                  icon: 'assets/images/logout.png',
                  title: 'Logout',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
