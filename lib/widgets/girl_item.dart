import 'package:bae/provider/girl_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GirlItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final girlData = Provider.of<WomenModel>(context);
    final favGirl = Provider.of<WomenData>(context);
    return Card(
      child: new ListTile(
        title: Text(
          girlData.name,
          style: TextStyle(fontSize: 18),
        ),
        trailing: IconButton(
          onPressed: () {
            girlData.isFavoriteGirl = !girlData.isFavoriteGirl;
            favGirl.chooseFavGirl(girlData.name);
          },
          icon: girlData.isFavoriteGirl
              ? Icon(
                  Icons.favorite,
                  color: Colors.pink,
                )
              : Icon(
                  Icons.favorite_border,
                ),
        ),
      ),
    );
  }
}
