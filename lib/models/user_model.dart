class UserModel {
  final int id;
  final String userId;
  final String name;
  final String email;
  final String phoneNo;
  final String address;
  final String country;
  final String dob;
  final String referralCode;
  final String? nidNumber;
  final String? passport;
  final bool active;
  final String role;
  final String token;

  UserModel({
    required this.id,
    required this.userId,
    required this.name,
    required this.email,
    required this.phoneNo,
    required this.address,
    required this.country,
    required this.dob,
    required this.referralCode,
    this.nidNumber,
    this.passport,
    required this.active,
    required this.role,
    required this.token,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      userId: json['userid'],
      name: json['name'],
      email: json['email'],
      phoneNo: json['phoneNo'],
      address: json['address'],
      country: json['country'],
      dob: json['dob'],
      referralCode: json['referralCode'],
      nidNumber: json['nidnumber'],
      passport: json['passport'],
      active: json['active'],
      role: json['role'],
      token: json['tokens'][0]['token'], // Extracting token
    );
  }
}
