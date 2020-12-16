class CustomerModel {
  String method;
  String parameters;

  CustomerModel({this.method, this.parameters});

  CustomerModel.fromJson(Map<String, dynamic> json) {
    method = json['method'];
    parameters = json['parameters'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['method'] = this.method;
    data['parameters'] = this.parameters;
    return data;
  }
}