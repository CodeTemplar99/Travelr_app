import 'package:flutter/material.dart';
import 'package:travelr/screens/home/components/body.dart';
import 'package:travelr/components/section_title.dart';
import 'package:travelr/constants.dart';
import 'package:travelr/models/user.dart';
import 'package:travelr/size_config.dart';

class TopTravellers extends StatelessWidget {
  const TopTravellers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: "Top on Travelrs", press: () {}),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(kDefaultPadding),
          ),
          padding: EdgeInsets.all(
            getProportionateScreenWidth(24),
          ),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [KDefaultShadow],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ...List.generate(
                topTravelers.length,
                (index) => UserCard(user: topTravelers[index]),
              )
            ],
          ),
        ),
      ],
    );
  }
}
