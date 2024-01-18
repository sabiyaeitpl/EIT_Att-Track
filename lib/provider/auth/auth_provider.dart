import 'package:flutter/material.dart';
import 'package:hrms/helper/prefkeys.dart';
import 'package:hrms/model/employee/employee_details_model.dart';
import 'package:hrms/repository/auth/login_repository.dart';
import 'package:hrms/view/widgets/shared_preference.dart';

import '../../helper/routes.dart';
import '../../helper/string.dart';
import '../../localizations/app_localizations.dart';
import '../../view/widgets/toast_msg.dart';

class AuthProvider extends ChangeNotifier{

  bool _isLoading=false;
  get isLoading=>_isLoading;

  setIsLoading(bool value){
    _isLoading=value;
    notifyListeners();
  }

  String? email,password,device_token;

  setEmail(String? value){
    email=value;
    notifyListeners();
  }

  setPassword(String? value){
    password=value;
    notifyListeners();
  }

  setDeviceToken(String? value){
    device_token=value;
    notifyListeners();
  }


  EmployeeDetailsModel? _employeeDetails;
  EmployeeDetailsModel? get employeeDetails=>_employeeDetails;
  setEmployeeDetails(val) async {
    _employeeDetails= val;
    notifyListeners();
  }
  
  saveSharedPreferencesValue(result)async{
    await SharedPreference().setBoolvalue(PrefKeys.NEWUSER, false);
    await SharedPreference().setStringValue(PrefKeys.TOKEN, result['token']);
    await SharedPreference().setStringValue(PrefKeys.USERTYPE, result['data']['user_type']);
    await SharedPreference().setStringValue(PrefKeys.EMPLOYEEID, result['data']['employee_id']);
    await SharedPreference().setStringValue(PrefKeys.ORGANIGATIONID, result['data']['emid']);
    await SharedPreference().setStringValue(PrefKeys.NAME, result['data']['name']);
    await SharedPreference().setStringValue(PrefKeys.EMAIL, result['data']['email']);
    await SharedPreference().setStringValue(PrefKeys.DESIGNATION, result['data']['designation']);
    await SharedPreference().setStringValue(PrefKeys.PASSWORD, result['data']['password']);
    await SharedPreference().setStringValue(PrefKeys.REPORTAUTH, result['data']['reportingauthority']);
    await SharedPreference().setStringValue(PrefKeys.LEAVEAUTH, result['data']['leaveauthority']);
    await SharedPreference().setStringValue(PrefKeys.DOB, result['data']['dateofbirth']);
    await SharedPreference().setStringValue(PrefKeys.PHONE, result['data']['em_phone']);
    await SharedPreference().setStringValue(PrefKeys.EMRGPHONE, result['data']['hel_em_phone']);
    await SharedPreference().setStringValue(PrefKeys.ADDRESS, result['data']['em_address']);
    await SharedPreference().setStringValue(PrefKeys.DEPARTMENT, result['data']['department']);
    await SharedPreference().setStringValue(PrefKeys.EMPLOYEETYPE, result['data']['employeetype']);
    await SharedPreference().setStringValue(PrefKeys.ORGANIGATIONNAME, result['data']['Organization']);
    await SharedPreference().setStringValue(PrefKeys.BANKDETAILS, result['data']['emp_bank_name']);
    await SharedPreference().setStringValue(PrefKeys.EMPIMAGEURL, result['imagePath']);
    //await SharedPreference().setStringValue(PrefKeys.JOBROLE, result['data']['emp_bank_name']);
  }
  Future<Object> getLoginData(context) async {
    setIsLoading(true);
    int? flag;
    String? errorMsg;
    try {
      var parameter = {
        EMAIL:email,
        PASSWORD:password,
        DEVICE_TOKEN:device_token
      };
      var result = await LoginRepository.LogIn(parameter: parameter);
      setIsLoading(false);

      flag = result['flag'];
      errorMsg=result['message'];
      if (flag==1) {
        await setEmployeeDetails(EmployeeDetailsModel.fromJson(result['data']));
        ToastMsg().showToast(Translation.of(context)!.translate('login_successfull_msg')!, Colors.green);
        saveSharedPreferencesValue(result);
        Routes.navigateToDashboard(context);
        return 1;
      } else {
        ToastMsg().showToast(errorMsg=='Not a valid credential'?Translation.of(context)!.translate('invalid_credential')!:Translation.of(context)!.translate('login_error_msg')!, Colors.red);
        return 0;
      }
    } catch (e) {
      return {};
    }
  }

}