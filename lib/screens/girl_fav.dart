import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:bae/provider/girl_data.dart';

import 'package:bae/widgets/girl_item.dart';

class GirlFav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fav = Provider.of<WomenData>(context);
    final girlFav = fav.girlName;
    return girlFav.isEmpty
        ? Center(
            child: Text('La liste des favorites est actuellement vide!'),
          )
        : Expanded(
            flex: 1,
            child: ListView.builder(
              itemBuilder: (context, i) => ChangeNotifierProvider.value(
                value: girlFav[i],
                child: GirlItem(),
              ),
              itemCount: girlFav.length,
            ),
          );
  }
}
