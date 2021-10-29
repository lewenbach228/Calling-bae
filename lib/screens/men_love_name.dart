import '../widgets/men_item.dart';
// import 'package:bae/widgets/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:provider/provider.dart';
import '../provider/men_data.dart';

class Men extends StatefulWidget {
  static const routeName = '/men';

  @override
  _MenState createState() => _MenState();
}

class _MenState extends State<Men> {
  List<MenModel> filteredNames = [];

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    setState(() {
      filteredNames = Provider.of<MenData>(context).menData;
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final men = Provider.of<MenData>(context);
    final man = men.menData;
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
        // Here the height of the container is 4O% of our total height
        height: size.height * .40,
        decoration: BoxDecoration(
          color: Colors.blue,
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
                      Icons.accessibility_new,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              Text(
                "Quel surnom mignon pour votre Mec?",
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
                  onChanged: (string) {
                    setState(() {
                      filteredNames = man
                          .where(
                            (e) => e.name
                                .toLowerCase()
                                .contains(string.toLowerCase()),
                          )
                          .toList();
                    });
                  },
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, i) => ChangeNotifierProvider.value(
                    value: filteredNames[i],
                    child: MenItem(),
                  ),
                  itemCount: filteredNames.length,
                ),
              ),
            ],
          ),
        ),
      ),
    ]));
  }
}
