import 'package:flutter/material.dart';
import 'package:flutter_covid19/config/palette.dart';
import 'package:flutter_covid19/config/style.dart';
import 'package:flutter_covid19/widgets/custom_appbar.dart';
import 'package:flutter_covid19/widgets/state_grid.dart';

class StateScreen extends StatefulWidget {
  const StateScreen({Key key}) : super(key: key);

  @override
  _StateScreenState createState() => _StateScreenState();
}

class _StateScreenState extends State<StateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.kPrimaryColor,
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: [
          _buildheader(),
          _buildRegionTabBar(),
          _buildStatesTabBar(),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            sliver: SliverToBoxAdapter(
              child: StateGrid(),
            ),
          )
        ],
      ),
    );
  }

  SliverPadding _buildheader() {
    return SliverPadding(
      padding: EdgeInsets.all(20),
      sliver: SliverToBoxAdapter(
        child: Text(
          'Staticese',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildRegionTabBar() {
    return SliverToBoxAdapter(
      child: DefaultTabController(
        length: 2,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white24,
            borderRadius: BorderRadius.circular(25),
          ),
          padding: EdgeInsets.all(3),
          child: TabBar(
            indicator: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            tabs: [
              Text('My country'),
              Text('Global'),
            ],
            labelColor: Colors.black,
            labelStyle: Style.tabTextStyle,
            unselectedLabelColor: Colors.white,
          ),
        ),
      ),
    );
  }

  SliverPadding _buildStatesTabBar() {
    return SliverPadding(
      padding: EdgeInsets.all(20),
      sliver: SliverToBoxAdapter(
        child: DefaultTabController(
          length: 3,
          child: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white60,
            labelStyle: Style.tabTextStyle,
            indicatorColor: Colors.transparent,
            tabs: [
              Text('Total'),
              Text('Today'),
              Text('Yesterday'),
            ],
          ),
        ),
      ),
    );
  }
}
