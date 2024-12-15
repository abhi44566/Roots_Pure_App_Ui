class ListAttandance {
  String? status;
  List<Attendance>? attendance;

  ListAttandance({this.status, this.attendance});

  ListAttandance.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['attendance'] != null) {
      attendance = <Attendance>[];
      json['attendance'].forEach((v) {
        attendance!.add(new Attendance.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.attendance != null) {
      data['attendance'] = this.attendance!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Attendance {
  String? email;
  String? date;
  String? timestamp;

  Attendance({this.email, this.date, this.timestamp});

  Attendance.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    date = json['date'];
    timestamp = json['timestamp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['date'] = this.date;
    data['timestamp'] = this.timestamp;
    return data;
  }
}
