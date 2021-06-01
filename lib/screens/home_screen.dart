import 'package:flutter/material.dart';
import 'package:flutter_covid19/config/palette.dart';
import 'package:flutter_covid19/widgets/country_dropdown.dart';
import 'package:flutter_covid19/widgets/custom_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _country = 'USA';

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      appBar: CustomAppBar(),
      body: CustomScrollView(
        slivers: [
          _buildheader(screenHeight),
        ],
      ),);
  }

  //appbar랑 이어지는 박스어댑터
  SliverToBoxAdapter _buildheader(screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Palette.kPrimaryColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('COVID-19',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //
                CountryDropdown(
                  countries: ['CN','FR','IN','IT','UK','USA'],
                  country: _country,
                  onChanged: (val) => setState(()=> _country=val),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
