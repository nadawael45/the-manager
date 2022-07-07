class SubscriptionModel{
  String? priceSubscription;
  String? nameSubscription;
  String? monthsNumbers;
  String? sessionNumbers;


  SubscriptionModel({ this.sessionNumbers, this.priceSubscription, this.monthsNumbers, this.nameSubscription});

  toJson(id) {
    return {
      'سعر الاشتراك': priceSubscription,
      'اسم الاشتراك': nameSubscription,
      'عدد الشهور': monthsNumbers,
      'عدد الحصص شهريا': sessionNumbers,
      'id': id,

    };
  }
}