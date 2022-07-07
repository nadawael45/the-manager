class AppointmentModel{
  String? daysNumbers;
  String? daysNames;
  String? startDate;
  String? endDate;


  AppointmentModel({ this.daysNames, this.daysNumbers, this.startDate, this.endDate});

  toJson(id) {
    return {
      'daysNumbers': daysNumbers,
      'daysNames': daysNames,
      'startDate': startDate,
      'endDate': endDate,
      'id': id,

    };
  }
}