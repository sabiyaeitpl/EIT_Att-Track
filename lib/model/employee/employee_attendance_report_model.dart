class EmployeeAttendanceReportModel {
  Report? report;
  List<Data>? data;

  EmployeeAttendanceReportModel({this.report, this.data});

  EmployeeAttendanceReportModel.fromJson(Map<String, dynamic> json) {
    report =
    json['report'] != null ? new Report.fromJson(json['report']) : null;
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.report != null) {
      data['report'] = this.report!.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Report {
  int? fullDay;
  int? halfDay;
  int? totalWorkingDay;
  int? absent;

  Report({this.fullDay, this.halfDay, this.totalWorkingDay, this.absent});

  Report.fromJson(Map<String, dynamic> json) {
    fullDay = json['fullDay'];
    halfDay = json['halfDay'];
    totalWorkingDay = json['totalWorkingDay'];
    absent = json['absent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fullDay'] = this.fullDay;
    data['halfDay'] = this.halfDay;
    data['totalWorkingDay'] = this.totalWorkingDay;
    data['absent'] = this.absent;
    return data;
  }
}

class Data {
  int? id;
  String? employeeCode;
  String? employeeName;
  String? date;
  String? day;
  String? timeIn;
  String? timeOut;
  String? month;
  String? timeInLocation;
  String? timeOutLocation;
  String? dutyHours;
  String? emid;
  String? latitudes;
  String? longitudes;
  String? logoutLatitude;
  String? logoutLongitude;
  int? loginStatus;
  int? logoutStatus;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
        this.employeeCode,
        this.employeeName,
        this.date,
        this.day,
        this.timeIn,
        this.timeOut,
        this.month,
        this.timeInLocation,
        this.timeOutLocation,
        this.dutyHours,
        this.emid,
        this.latitudes,
        this.longitudes,
        this.logoutLatitude,
        this.logoutLongitude,
        this.loginStatus,
        this.logoutStatus,
        this.createdAt,
        this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    employeeCode = json['employee_code'];
    employeeName = json['employee_name'];
    date = json['date'];
    day = json['day'];
    timeIn = json['time_in'];
    timeOut = json['time_out'];
    month = json['month'];
    timeInLocation = json['time_in_location'];
    timeOutLocation = json['time_out_location'];
    dutyHours = json['duty_hours'];
    emid = json['emid'];
    latitudes = json['latitudes'];
    longitudes = json['longitudes'];
    logoutLatitude = json['logout_latitude'];
    logoutLongitude = json['logout_longitude'];
    loginStatus = json['loginStatus'];
    logoutStatus = json['logoutStatus'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['employee_code'] = this.employeeCode;
    data['employee_name'] = this.employeeName;
    data['date'] = this.date;
    data['day'] = this.day;
    data['time_in'] = this.timeIn;
    data['time_out'] = this.timeOut;
    data['month'] = this.month;
    data['time_in_location'] = this.timeInLocation;
    data['time_out_location'] = this.timeOutLocation;
    data['duty_hours'] = this.dutyHours;
    data['emid'] = this.emid;
    data['latitudes'] = this.latitudes;
    data['longitudes'] = this.longitudes;
    data['logout_latitude'] = this.logoutLatitude;
    data['logout_longitude'] = this.logoutLongitude;
    data['loginStatus'] = this.loginStatus;
    data['logoutStatus'] = this.logoutStatus;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}