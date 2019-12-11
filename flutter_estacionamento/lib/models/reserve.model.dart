class Reserve {
  int id;
  bool active;
  String createdDate;

  Reserve({this.id, this.active, this.createdDate});

  Reserve.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    active = json['active'];
    createdDate = json['createdDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['active'] = this.active;
    data['createdDate'] = this.createdDate;
    return data;
  }
}
