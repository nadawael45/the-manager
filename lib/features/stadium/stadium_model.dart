class StadiumModel{
  String? priceAm;
  String? stadiumName;
  String? pricePm;
  String? clientName;


  StadiumModel({ this.clientName, this.priceAm, this.pricePm, this.stadiumName});

  toJson(id) {
    return {
      'priceAm': priceAm,
      'stadiumName': stadiumName,
      'pricePm': pricePm,
      'clientName': clientName,
      'id': id,

    };
  }
}