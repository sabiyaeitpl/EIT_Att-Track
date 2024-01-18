import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms/helper/color.dart';
import 'package:hrms/localizations/app_localizations.dart';
import 'package:hrms/view/screens/employee_modules/tasks/widgets/task_list.dart';



class ProjectList extends StatefulWidget {
  const ProjectList({super.key});

  @override
  State<ProjectList> createState() => _ProjectListState();
}

class _ProjectListState extends State<ProjectList> {


  getProjectStatusContainer(String status,int count){
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: appcolor1
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(count.toString(),style: TextStyle(color: Colors.white,fontSize: 25.sp,fontWeight: FontWeight.w600),),
                Text(status,style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.w500)),
              ],
            ),
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView.builder(
          itemCount: 2,
          itemBuilder: (context,index){
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>TaskList()));
              },
              child: SizedBox(
                width: 550.w,
                child: Card(
                  elevation: 5,
                  color: Colors.white,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5.r)
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 40.h,
                        width: 550.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(5.r),topRight: Radius.circular(5.r)),
                            color: appcolor1
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text('Project Name',style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.w600),),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //owner nmae
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${Translation.of(context)!.translate('owner')} :',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 18.sp),),
                                  Text('Name',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16.sp),)
                                ],
                              ),
                            ),
                            const Divider(height: .5,thickness: .5,color: Colors.grey,),

                            //start date
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${Translation.of(context)!.translate('start_date')} :',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 18.sp),),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: appcolor1
                                    ),
                                      child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                      child: Text('16-01-2024',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16.sp),),
                                  ))
                                ],
                              ),
                            ),
                            const Divider(height: .5,thickness: .5,color: Colors.grey,),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    getProjectStatusContainer('ToDo', 01),
                                    getProjectStatusContainer('Work In Progress', 05),
                                    getProjectStatusContainer('Testing', 01),
                                    getProjectStatusContainer('Completed', 01),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
