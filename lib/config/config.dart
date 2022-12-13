class Config {
  static const httpRequestTimeout = 15;

  // UAT
  static const String uatOtherUrl = "";
  // Testing
  static const String testingOtherUrl = "";
  // Production
  static const String productionOtherUrl = "";

  static const String prodDcbUrl = testingOtherUrl;
  static const String baseOtherUrl = prodDcbUrl;
  static const String baseDcbUrl = prodDcbUrl;

  static const bool isLiveVoucher = false;
}
