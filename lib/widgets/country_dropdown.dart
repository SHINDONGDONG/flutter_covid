import 'package:flutter/material.dart';

//국가별 선택 드롭다운 바
class CountryDropdown extends StatelessWidget {
  final List<String> countries;
  final String country;
  final Function(String) onChanged;

  CountryDropdown(
      {@required this.countries,
      @required this.country,
      @required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      //드롭다운 버튼 하이드 언더라인안에
      child: DropdownButtonHideUnderline(
        //드롭다운 버튼을 스트링형식으로 선언 후
        child: DropdownButton<String>(
          //아이템들을 돌려주어 하나의 아이템당 dropdownmenuItem으로 출력함
          value: country,
          items: countries.map(
            (e) => DropdownMenuItem(
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 12,
                      child: Image.asset('assets/images/${e.toLowerCase()}_flag.png'),
                    ),
                    const SizedBox(width: 8,),
                    Text(
                      e,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              value: e,
            ),
          ).toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
