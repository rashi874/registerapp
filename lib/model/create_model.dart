class CreateModel {
  final dynamic gst;
  final String name;
  final dynamic mobile;
  final String companyname;
  final dynamic address;
  final dynamic userid;
  final dynamic usertypeid;
  final String email;
  final dynamic countryid;
  final dynamic stateid;
  final dynamic districtid;
  final dynamic cityid;
  final dynamic zipcode;
  final dynamic dob;
  final dynamic latlong;
  final String photo;

  CreateModel({
    required this.userid,
    required this.usertypeid,
    required this.email,
    required this.countryid,
    required this.stateid,
    required this.districtid,
    required this.cityid,
    required this.zipcode,
    required this.dob,
    required this.latlong,
    required this.photo,
    required this.gst,
    required this.name,
    required this.mobile,
    required this.companyname,
    required this.address,
  });

  Map<String, dynamic> toJson() {
    return {
      "user_id": userid,
      "user_type_id": usertypeid,
      "email": email,
      "gst_no": gst,
      "country_id": countryid,
      "name": name,
      "mobile": mobile,
      "company_name": companyname,
      "address": address,
      "state_id": stateid,
      "district_id": districtid,
      "city_id": cityid,
      "zipcode": zipcode,
      "dob": dob,
      "latlong": latlong,
      "photo": photo,
    };
  }
}
