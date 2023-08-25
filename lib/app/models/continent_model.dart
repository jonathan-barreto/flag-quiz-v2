class ContinentModel {
  String? status;
  CountryData? countryData;
  List<String>? countries;

  ContinentModel({this.status, this.countryData, this.countries});

  ContinentModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    countryData = json['countryData'] != null
        ? CountryData.fromJson(json['countryData'])
        : null;
    countries = json['countries'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (countryData != null) {
      data['countryData'] = countryData!.toJson();
    }
    data['countries'] = countries;
    return data;
  }
}

class CountryData {
  String? id;
  String? flagName;
  String? continente;
  String? flagImage;

  CountryData({this.id, this.flagName, this.continente, this.flagImage});

  CountryData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    flagName = json['flag_name'];
    continente = json['continente'];
    flagImage = json['flag_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['flag_name'] = flagName;
    data['continente'] = continente;
    data['flag_image'] = flagImage;
    return data;
  }
}
