import 'package:assessment_project/utility/strings/constants.dart';
import 'package:flutter/material.dart';

class TopMoverContainer extends StatelessWidget {
  final Size size;
  final String blockpicture;
  final String blockName;
  final String blockIcon;
  final String blockPercent;
  final int color;
  const TopMoverContainer(
      {super.key,
      required this.size,
      required this.blockpicture,
      required this.blockName,
      required this.blockIcon,
      required this.blockPercent, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height /1,
      width: size.width / 2,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(textFieldBackgroundColor))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          CircleAvatar(
            backgroundImage: AssetImage(blockpicture),
          ),
          Spacer(),
          Text(
            blockName,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(children: [Image.asset(blockIcon), Text(blockPercent,style: TextStyle(color: Color(color),fontWeight: FontWeight.bold),)]),
          Spacer()
        ],
      ),
    );
  }
}
