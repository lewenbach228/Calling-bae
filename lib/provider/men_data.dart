import 'package:flutter/foundation.dart';

class MenModel with ChangeNotifier {
  final String name;
  bool isFavoriteMen;

  MenModel({
    required this.name,
    this.isFavoriteMen = false,
  });
}

class MenData with ChangeNotifier {
  List<MenModel> _mendata = [
    MenModel(name: "Coquinou"),
    MenModel(name: "Cowboy"),
    MenModel(name: "Croquilou"),
    MenModel(name: "Darling"),
    MenModel(name: "Doudou"),
    MenModel(name: "Doudounet"),
    MenModel(name: "Gros poilu"),
    MenModel(name: "Honey"),
    MenModel(name: "Kiki"),
    MenModel(name: "Lapinou"),
    MenModel(name: "Loulou"),
    MenModel(name: "Ma couille"),
    MenModel(name: "Ma flamme"),
    MenModel(name: "Ma guimauve"),
    MenModel(name: "Ma petite marmotte"),
    MenModel(name: "Michou"),
    MenModel(name: "Mon apollon"),
    MenModel(name: "Mon beau"),
    MenModel(name: "Mon beau bazou"),
    MenModel(name: "Mon beau chevalier"),
    MenModel(name: "Mon bébé d'amour"),
    MenModel(name: "Mon bel étalon"),
    MenModel(name: "Mon bel ange"),
    MenModel(name: "Mon bien-aimé"),
    MenModel(name: "Mon biquet"),
    MenModel(name: "Mon bichon"),
    MenModel(name: "Mon bisounours"),
    MenModel(name: "Mon canard"),
    MenModel(name: "Mon cher et tendre"),
    MenModel(name: "Mon chamallow"),
    MenModel(name: "Mon chaton d'amour"),
    MenModel(name: "Mon choux"),
    MenModel(name: "Mon doux frisé"),
    MenModel(name: "Mon coussinet"),
    MenModel(name: "Mon jules"),
    MenModel(name: "Mon gorille"),
    MenModel(name: "Mon homme"),
    MenModel(name: "Mon loup"),
    MenModel(name: "Mon minet"),
    MenModel(name: "Mon ours"),
    MenModel(name: "Mon petit canari"),
    MenModel(name: "Mon petit prince"),
    MenModel(name: "Mon poussin"),
    MenModel(name: "Mon roméo"),
    MenModel(name: "Mon p'tit bout"),
    MenModel(name: "Mon petit chat"),
    MenModel(name: "Mon pain d'épice"),
    MenModel(name: "Mon p'tit trognon d'amour"),
    MenModel(name: "Mon rayon de soleil"),
    MenModel(name: "Mon sucre d'orge"),
    MenModel(name: "Mon toutounet"),
    MenModel(name: "Ourson"),
    MenModel(name: "Sucre d'orge"),
    MenModel(name: "Sweetheart"),
    MenModel(name: "Titounet"),
    MenModel(name: "Toutoune"),
    MenModel(name: "Beau brun / Beau blond"),
    MenModel(name: "Bibi"),
    MenModel(name: "Calinours"),
    MenModel(name: "Chérichou"),
    MenModel(name: "Champion"),
    MenModel(name: "Chaton"),
    MenModel(name: "Chochotte"),
    MenModel(name: "Choupinet"),
    MenModel(name: "Choupinou"),
  ];
  List<MenModel> get menData {
    return [..._mendata];
  }

  List<MenModel> _favMen = [];
  List<MenModel> get favMen {
    return [..._favMen];
  }

  void chooseMen(String name) {
    final chooseMen = _favMen.indexWhere((element) => element.name == name);
    if (chooseMen >= 0) {
      _favMen.removeAt(chooseMen);
    } else {
      _favMen.add(_mendata.firstWhere((element) => element.name == name));
    }
    notifyListeners();
  }
}
