import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SingleGridItem extends StatelessWidget {
  final GestureTapCallback onPressed;
  final String title;
  final String assetImagePath;


  const SingleGridItem({
    required this.onPressed,
    required this.title,
    required this.assetImagePath,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 157.h,
          width: 169.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 71.h,
                  width: 70.w,
                  child: Image(
                    image: AssetImage(assetImagePath),
                  ),
                ),
                SizedBox(height: 5.h,),
                FittedBox( child: Text(title,style: TextStyle(color: Colors.black,fontSize: 16.sp,fontWeight: FontWeight.w400),textAlign: TextAlign.center,))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
