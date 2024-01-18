import 'const.dart';

final Uri logIn = Uri.parse('${baseUrl}v1/login');
final Uri clockInClockOut = Uri.parse('${baseUrl}attentences');
final Uri employeeAttendanceReport = Uri.parse('${baseUrl}listAttendence');
final Uri employeeAttendanceGraph = Uri.parse('${baseUrl}graphAttendence');
final Uri employeeLeaveType = Uri.parse('${baseUrl}leave-type');
final Uri newLeaveApplication= Uri.parse('${baseUrl}leave-apply');
final Uri employeeLeaveStatus= Uri.parse('${baseUrl}leave-list');
final Uri employeePayslip= Uri.parse('${baseUrl}payroll-list');
final Uri employeeHoliday= Uri.parse('${baseUrl}emp-holiday-list');
final Uri birthdayReminder= Uri.parse('${baseUrl}birthday-list');
final Uri employeeAnnouncementList= Uri.parse('${baseUrl}announcement-list');



//payload String
const String EMAIL = 'email';
const String PASSWORD = 'password';
const String DEVICE_TOKEN = 'device_token';

const String EMPLOYEE_ID = 'emp_id';
const String ORGANIZATION_ID = 'emid';
const String TYPE = 'type';
const String TIME_IN = 'time_in';
const String TIME_IN_LOCATION = 'time_in_location';
const String LATITUDE = 'latitudes';
const String LONGITUDE = 'longitudes';
const String WORK_REPORT = 'work_report';

const String SELECTEDMONTHYEAR = 'selected_month_year';
const String EMPLOYEENAME = 'employee_name';
const String LEAVETYPE = 'leave_type';
const String REPORTINGAUTH = 'reportingauthority';
const String LEAVEAUTH = 'leaveauthority';
const String DATEFROM = 'date_from';
const String DATETO = 'date_to';
const String LEAVEDAY = 'half_cl';
const String REASON = 'status_remarks';

