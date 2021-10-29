import 'package:flutter/foundation.dart';

class WomenModel with ChangeNotifier {
  final String name;
  bool isFavoriteGirl;

  WomenModel({
    required this.name,
    this.isFavoriteGirl = false,
  });
}

class WomenData with ChangeNotifier {
  List<WomenModel> _girlData = [
    WomenModel(name: "Baby"),
    WomenModel(name: "Beauté fatale"),
    WomenModel(name: "Bibiche"),
    WomenModel(name: "Bichette"),
    WomenModel(name: "Bijou"),
    WomenModel(name: "Biquette"),
    WomenModel(name: "Chaton"),
    WomenModel(name: "Chatounette"),
    WomenModel(name: "Chouchoute"),
    WomenModel(name: "Chouquette"),
    WomenModel(name: "Choupette"),
    WomenModel(name: "Choupinette"),
    WomenModel(name: "Cocotte"),
    WomenModel(name: "Coquinette"),
    WomenModel(name: "Crevette"),
    WomenModel(name: "Darling"),
    WomenModel(name: "Grosse minoune"),
    WomenModel(name: "Loulou"),
    WomenModel(name: "Louloute"),
    WomenModel(name: "Loupiotte"),
    WomenModel(name: "Ma beauté"),
    WomenModel(name: "Ma belle"),
    WomenModel(name: "Ma biche"),
    WomenModel(name: "Ma bien-aimée"),
    WomenModel(name: "Ma bitch"),
    WomenModel(name: "Ma caille en sucre"),
    WomenModel(name: "Ma chatoune"),
    WomenModel(name: "Ma poupoune"),
    WomenModel(name: "Ma chouette"),
    WomenModel(name: "Ma coccinelle"),
    WomenModel(name: "Ma colombe"),
    WomenModel(name: "Ma crevette"),
    WomenModel(name: "Ma déesse"),
    WomenModel(name: "Ma Demoiselle"),
    WomenModel(name: "Ma douce"),
    WomenModel(name: "Ma dulcinée"),
    WomenModel(name: "Ma gazelle"),
    WomenModel(name: "Ma juliette"),
    WomenModel(name: "Ma lionne"),
    WomenModel(name: "Ma louve"),
    WomenModel(name: "Maman"),
    WomenModel(name: "Ma muse"),
    WomenModel(name: "Ma petite sirène"),
    WomenModel(name: "Ma perle rare"),
    WomenModel(name: "Ma poulette / ma poule"),
    WomenModel(name: "Ma poupée"),
    WomenModel(name: "Ma puce Pupuce"),
    WomenModel(name: "Ma reine"),
    WomenModel(name: "Ma valentine"),
    WomenModel(name: "Ma louloute"),
    WomenModel(name: "Mignonne"),
    WomenModel(name: "Mon adorée"),
    WomenModel(name: "Mon lapin rose"),
    WomenModel(name: "Mon lys"),
    WomenModel(name: "Minette"),
    WomenModel(name: "Poucinette"),
    WomenModel(name: "Pepette"),
    WomenModel(name: "Princesse"),
    WomenModel(name: "Tigresse"),
    WomenModel(name: "Zezette"),
  ];
  List<WomenModel> get girlData {
    return [..._girlData];
  }

  List<WomenModel> _favoriteGirl = [];
  List<WomenModel> get girlName {
    return [..._favoriteGirl];
  }

  List<WomenModel> _queryGirl = [];
  List<WomenModel> get query {
    return [..._queryGirl];
  }

  void chooseFavGirl(String name) {
    final girlChoose =
        _favoriteGirl.indexWhere((element) => element.name == name);
    if (girlChoose >= 0) {
      _favoriteGirl.removeAt(girlChoose);
    } else {
      _favoriteGirl.add(
        _girlData.firstWhere((element) => element.name == name),
      );
    }
    notifyListeners();
  }
}
