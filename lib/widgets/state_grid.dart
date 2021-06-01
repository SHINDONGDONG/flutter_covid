import 'package:flutter/material.dart';

class StateGrid extends StatelessWidget {
  const StateGrid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        children: [
          Flexible(
            child: Row(
              children: [
                _buildStateCard(title: 'Total Cases',count: '1.81M',color: Colors.orange),
                _buildStateCard(title: 'Deaths',count: '105 K',color: Colors.red),
              ],
            ),
          ),
          Flexible(
            child: Row(
              children: [
                _buildStateCard(title: 'Recovered',count: '391 K',color: Colors.green),
                _buildStateCard(title: 'Active',count: '1.13 M',color: Colors.lightBlue),
                _buildStateCard(title: 'Critical',count: 'N/A',color: Colors.purple),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Expanded _buildStateCard({@required String title, @required String count, @required MaterialColor color}) {
    return Expanded(
                child: Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        count,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              );
  }
}
