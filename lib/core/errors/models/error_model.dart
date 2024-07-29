class ErrorModel {
  String message;
  String error;
  int statusCode;

  ErrorModel(
      {required this.message, required this.error, required this.statusCode});

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
        message: json['message'],
        error: json['error'],
        statusCode: json['statusCode']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['error'] = this.error;
    data['statusCode'] = this.statusCode;
    return data;
  }
}
