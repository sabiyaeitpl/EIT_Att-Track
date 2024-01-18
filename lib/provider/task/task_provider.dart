import 'package:flutter/cupertino.dart';
import 'package:hrms/view/screens/employee_modules/tasks/widgets/task_dashboard.dart';

class TaskProvider extends ChangeNotifier{



Widget _employeeTaskModuleWidget =const TaskDashboard();
get employeeTaskModuleWidget => _employeeTaskModuleWidget;
setEmployeeTaskModuleWidget(value){
  _employeeTaskModuleWidget=value;
  notifyListeners();
}



}
