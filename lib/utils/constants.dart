bool obscureText = true;
dynamic userData = [];
dynamic checkInTime = "";
dynamic checkOutTime = "";

String baseUrl = "attendapp.cmcmtech.com";
String version = "api/";
String deviceIdApi = "getEmployees/";
String login = "login";
String employeeDeleteApi = "removeEmployee";
String markAttendanceApi = "checkin";

dynamic lat, long;
dynamic headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
};

dynamic authHeaders = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  // 'Authorization': 'Bearer ${userData["token"]}',
};
