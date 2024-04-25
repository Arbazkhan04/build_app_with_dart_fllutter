class Prayer{
  String fajr , dhuhr , asr , maghrib , isha ;
  Prayer(this.fajr, this.dhuhr, this.asr, this.maghrib, this.isha);

  static List<Prayer> parseData (Map<String , dynamic> serverData){
    List<Prayer> monthData = [];
    for(final day in serverData['data']){
      String fajr = day["timings"]['Fajr'];
      String dhuhr = day["timings"]['Dhuhr'];
      String asr = day["timings"]['Asr'];
      String maghrib = day["timings"]['Maghrib'];
      String isha = day["timings"]['Isha'];
      Prayer p = new Prayer(fajr, dhuhr, asr, maghrib, isha);
      monthData.add(p);
    }
    return monthData;
  }
}