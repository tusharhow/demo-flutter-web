import 'package:flutter/material.dart';
import '../screens/add_a_product_page.dart';
import 'navigation.dart';
import 'sidebar_menu_row_mobile.dart';

class DefaultDrawer extends StatelessWidget {
  const DefaultDrawer({
    Key? key,
    required Size size,
  })  : _size = size,
        super(key: key);

  final Size _size;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: _size.width,
              height: _size.height,
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
              child: SingleChildScrollView(
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
                                width: _size.width * 0.1,
                                height: _size.height * 0.03,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'My Store',
                                style: TextStyle(
                                  fontSize: _size.width * 0.03,
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
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        children: [
                          SidebarMenuRowMobile(
                            size: _size,
                            onTap: () {},
                            icon: 'assets/images/dash.png',
                            title: 'Dashboard',
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          SidebarMenuRowMobile(
                            size: _size,
                            onTap: () {},
                            icon: 'assets/images/sStore.png',
                            title: 'My Store',
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          SidebarMenuRowMobile(
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
                          SidebarMenuRowMobile(
                            size: _size,
                            onTap: () {},
                            icon: 'assets/images/service.png',
                            title: 'Show a Discounted Service',
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          SidebarMenuRowMobile(
                            size: _size,
                            onTap: () {},
                            icon: 'assets/images/product.png',
                            title: 'View a Product',
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          SidebarMenuRowMobile(
                            size: _size,
                            onTap: () {},
                            icon: 'assets/images/customers.png',
                            title: 'Clients',
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          SidebarMenuRowMobile(
                            size: _size,
                            onTap: () {},
                            icon: 'assets/images/orders.png',
                            title: 'My Orders',
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          SidebarMenuRowMobile(
                            size: _size,
                            onTap: () {},
                            icon: 'assets/images/withdrawal.png',
                            title: 'Payments',
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          SidebarMenuRowMobile(
                            size: _size,
                            onTap: () {},
                            icon: 'assets/images/agenda.png',
                            title: 'Diary',
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          SidebarMenuRowMobile(
                            size: _size,
                            onTap: () {},
                            icon: 'assets/images/commerce.png',
                            title: 'Reports',
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          SidebarMenuRowMobile(
                            size: _size,
                            onTap: () {},
                            icon: 'assets/images/logout.png',
                            title: 'Logout',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
