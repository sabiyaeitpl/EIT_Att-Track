import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms/helper/color.dart';
import 'package:hrms/localizations/app_localizations.dart';
import 'package:hrms/view/dashboard/attendance/attendance.dart';
import 'package:hrms/view/dashboard/home/home.dart';
import 'package:hrms/view/dashboard/payslip/payslip.dart';
import 'package:hrms/view/dashboard/tasks/tasks.dart';


class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  int selected_page=0;
  bool home=true;



  final List<Widget> _pages = [
    const Attendance(),
    const Payslip(),
    const Tasks(),
    const Center(child: Text('GPS Tracker Page')),
    const Home()
  ];

  floatingButton(){
    return FloatingActionButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      backgroundColor: appcolor1,
      onPressed: () {
        setState(() {
          home=true;
        });
      },
      child:  Icon(Icons.home,color: home==true?Colors.white:Colors.white60,size: 40.h,),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<BottomNavigationBarItem> _navItems = [
      BottomNavigationBarItem(
        icon: const Icon(Icons.description_outlined),
        label: Translation.of(context)!.translate('attendance'),
      ),
       BottomNavigationBarItem(
        icon: const Icon(Icons.monetization_on_outlined),
        label: Translation.of(context)!.translate('payslip'),
      ),
       BottomNavigationBarItem(
        icon: const Icon(Icons.sync_outlined),
        label: Translation.of(context)!.translate('tasks'),
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.my_location_outlined),
        label: Translation.of(context)!.translate('settings'),
      ),
    ];


    return Scaffold(
      extendBody: true,
      floatingActionButton:floatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: home==true?_pages[4]:_pages[selected_page!],
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        height: 100.h,
        color:appcolor1,
        shape: const CircularNotchedRectangle(), //shape of notch
        notchMargin: 5,
        clipBehavior: Clip.hardEdge,
          padding: EdgeInsetsGeometry.lerp(EdgeInsets.zero, EdgeInsets.zero, 1),
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor:appcolor1,
          type: BottomNavigationBarType.fixed,
          unselectedLabelStyle: const TextStyle(color: Colors.white60,),
          selectedLabelStyle: const TextStyle(color: Colors.white),
          //showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: home==false?Colors.white:Colors.white60,
          unselectedItemColor: Colors.white60,
          currentIndex: selected_page,
          selectedFontSize: 17,
          unselectedFontSize: 15,
          items: _navItems,
          onTap: (index){
            setState(() {
              home=false;
              selected_page=index;
            });
          },
        )
      ),
    );
  }
}
