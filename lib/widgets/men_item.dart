import 'package:bae/provider/men_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final men = Provider.of<MenModel>(context);
    return Card(
      child: new ListTile(
        title: Text(
          men.name,
          style: TextStyle(fontSize: 18),
        ),
        trailing: IconButton(
            icon: men.isFavoriteMen
                ? Icon(
                    Icons.favorite,
                    color: Colors.blue,
                  )
                : Icon(
                    Icons.favorite_border,
                  ),
            onPressed: () {
              men.isFavoriteMen = !men.isFavoriteMen;
              Provider.of<MenData>(context, listen: false).chooseMen(men.name);
            }),
      ),
    );
  }
}
