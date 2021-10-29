import '../provider/girl_data.dart';
import '../widgets/girl_item.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class Women extends StatefulWidget {
  static const routeName = '/women';

  @override
  _WomenState createState() => _WomenState();
}

class _WomenState extends State<Women> {
  List<WomenModel> queryGirl = [];
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    setState(() {
      queryGirl = Provider.of<WomenData>(context).girlData;
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final women = Provider.of<WomenData>(context);
    final girl = women.girlData;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .40,
            decoration: BoxDecoration(
              color: Colors.pink,
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.nature_people,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Quel surnom d'amour pour votre go?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(29.5),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Rechercher",
                        icon: SvgPicture.asset("assets/icons/search.svg"),
                        border: InputBorder.none,
                      ),
                      onChanged: (query) {
                        setState(() {
                          queryGirl = girl
                              .where(
                                (e) => e.name
                                    .toLowerCase()
                                    .contains(query.toLowerCase()),
                              )
                              .toList();
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, i) => ChangeNotifierProvider.value(
                        value: queryGirl[i],
                        child: GirlItem(),
                      ),
                      itemCount: queryGirl.length,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
