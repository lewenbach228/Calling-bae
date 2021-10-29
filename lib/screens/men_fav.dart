import 'package:bae/provider/men_data.dart';
import 'package:bae/widgets/men_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenFav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fav = Provider.of<MenData>(context);
    final menFav = fav.favMen;
    return menFav.isEmpty
        ? Center(
            child: Text('La liste des favoris est actuellement vide !'),
          )
        : Expanded(
            flex: 1,
            child: ListView.builder(
              itemBuilder: (context, i) => ChangeNotifierProvider.value(
                value: menFav[i],
                child: MenItem(),
              ),
              itemCount: menFav.length,
            ),
          );
  }
}
