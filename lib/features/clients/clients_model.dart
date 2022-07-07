class ClientsModel{
  String? name;
  String? phone;
  String? startDate;
  String? endDate;
  String? time;
  String? game;
  String? subscriptionType;
  bool? isJoined;

  ClientsModel({this.name, this.phone, this.startDate, this.time, this.game,
      this.subscriptionType, this.isJoined,this.endDate});

  toJson(id) {
    return {
      'id': id,
      'name': name,
      'phone': phone,
      'subscriptionType': subscriptionType,
      'game': game,
      'startDate': startDate,
      'endDate': endDate,
      'time': time,
      'isJoined': isJoined
    };
  }
}