import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:snap_shop/features/home/ui/home_screen.dart';


class LayoutShop extends StatefulWidget {
  const LayoutShop({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LayoutShopState createState() => _LayoutShopState();
}

class _LayoutShopState extends State<LayoutShop> {
  int _bottomNavIndex = 0; // مؤشر الصفحة الحالية

  final List<Widget> _pages = [
    const HomeScreen(),
    Container(),
    Container(),
    Container(),
  ];

  List<IconData> iconList = [
    Icons.home,
    Icons.category,
    Icons.shopping_cart,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_bottomNavIndex], // الصفحة الحالية بناءً على الـ index
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // هنا يمكن وضع الأكشن الخاص بالـ FloatingActionButton إذا أردت
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerDocked, // وضع الزر في منتصف الـ Bottom Navigation Bar
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList, // الأيقونات
        activeIndex: _bottomNavIndex, // المؤشر الحالي
        gapLocation:
            GapLocation.center, // وجود فجوة في منتصف الـ Bottom Navigation Bar
        notchSmoothness: NotchSmoothness.verySmoothEdge, // جعل الزاوية ناعمة
        leftCornerRadius: 32, // زوايا دائرية لليسار
        rightCornerRadius: 32, // زوايا دائرية لليمين
        onTap: (index) {
          setState(() {
            _bottomNavIndex = index; // تحديث الصفحة عند تغيير المؤشر
          });
        },
      ),
    );
  }
}
