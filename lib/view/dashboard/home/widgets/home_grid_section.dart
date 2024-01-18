import 'package:flutter/material.dart';
import 'package:hrms/helper/routes.dart';
import 'package:hrms/localizations/app_localizations.dart';
import 'package:hrms/view/dashboard/home/widgets/single_grid_item.dart';
import 'package:hrms/view/widgets/asset_image_fetch.dart';


class HomeGridSection extends StatelessWidget {
  const HomeGridSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        //height: MediaQuery.of(context).size.height*.5,
        //width: MediaQuery.of(context).size.width,
        child: GridView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              //crossAxisSpacing:2,
              //mainAxisSpacing: 2,
              childAspectRatio: 2/1.8
          ),
          children: [
            //Events
            /*SingleGridItem(
              onPressed: (){},
              title: Translation.of(context)!.translate('events')!,
              assetImagePath: const AssetImages(imgName: 'main_dash_events').getAssetImagePath(),
            ),*/

            //announcement
            SingleGridItem(
              onPressed: (){
                Routes.navigateToEmployeeAnnouncement(context);
              },
              title: Translation.of(context)!.translate('announcement')!,
              assetImagePath: const AssetImages(imgName: 'main_dash_announcement').getAssetImagePath(),
            ),

            //notifications
            SingleGridItem(
              onPressed: (){
                Routes.navigateToEmployeeNotifications(context);
              },
              title: Translation.of(context)!.translate('notifications')!,
              assetImagePath: const AssetImages(imgName: 'main_dash_notifications').getAssetImagePath(),
            ),

            //attendance
            SingleGridItem(
              onPressed: (){
                Routes.navigateToEmployeeAttendanceModuleDashboard(context);
              },
              title: Translation.of(context)!.translate('attendance')!,
              assetImagePath: const AssetImages(imgName: 'main_dash_attendance').getAssetImagePath(),
            ),

            //tasks
            SingleGridItem(
              onPressed: (){
                Routes.navigateToEmployeeTaskModule(context);
              },
              title: Translation.of(context)!.translate('tasks')!,
              assetImagePath: const AssetImages(imgName: 'main_dash_tasks').getAssetImagePath(),
            ),

            //myprofile
            SingleGridItem(
              onPressed: (){
                Routes.navigateToEmployeeProfile(context);
              },
              title: Translation.of(context)!.translate('my_profile')!,
              assetImagePath: const AssetImages(imgName: 'main_dash_myprofile').getAssetImagePath(),
            ),

            //settings
            SingleGridItem(
              onPressed: (){},
              title: Translation.of(context)!.translate('settings')!,
              assetImagePath: const AssetImages(imgName: 'main_dash_settings').getAssetImagePath(),
            ),

            //leave application
            SingleGridItem(
              onPressed: (){
                Routes.navigateToEmployeeLeaveApplicationModuleDashboard(context);
              },
              title: Translation.of(context)!.translate('leave_application')!,
              assetImagePath: const AssetImages(imgName: 'main_dash_leave_application').getAssetImagePath(),
            ),

            //my payslip
            SingleGridItem(
              onPressed: (){
                Routes.navigateToEmployeePayslip(context);
              },
              title: Translation.of(context)!.translate('my_payslip')!,
              assetImagePath: const AssetImages(imgName: 'main_dash_my_payslip').getAssetImagePath(),
            ),

            //holidays
            SingleGridItem(
              onPressed: (){
                Routes.navigateToHolidayDashboard(context);
              },
              title: Translation.of(context)!.translate('holidays')!,
              assetImagePath: const AssetImages(imgName: 'main_dash_holidays').getAssetImagePath(),
            ),

          ],
        )
        /*GridView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing:2,
              mainAxisSpacing: 2,
              childAspectRatio: 2/1.8
          ),
          itemCount: 10,
          itemBuilder: (BuildContext context,index){
            return SingleGridItem();
          },
        ),*/
      ),
    );
  }
}
