class User {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String? phone;
  final String? gender;
  final String? dob;
  final String gst;
  final String categoryId;
  final String currentDatetime;
  final int status;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    this.phone,
    this.gender,
    this.dob,
    required this.gst,
    required this.categoryId,
    required this.currentDatetime,
    required this.status,
  });

  // Factory method to create a User object from JSON
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      password: json['password'],
      phone: json['phone'],
      gender: json['gender'],
      dob: json['dob'],
      gst: json['gst'],
      categoryId: json['category_id'],
      currentDatetime: json['current_datetime'],
      status: json['status'],
    );
  }

  // Method to convert a User object back to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'password': password,
      'phone': phone,
      'gender': gender,
      'dob': dob,
      'gst': gst,
      'category_id': categoryId,
      'current_datetime': currentDatetime,
      'status': status,
    };
  }
}



