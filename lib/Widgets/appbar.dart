import 'package:flutter/material.dart';

class circleName extends StatelessWidget {
  circleName({Key? key, String? iconImage}) : super(key: key);
  Icon? iconImage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
              "assets/images/profile.png",
            ),
            radius: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          ),
          const Icon(
            Icons.linear_scale_outlined,
            color: Colors.black,
            size: 25,
          ),
        ],
      ),
    );
  }
}
