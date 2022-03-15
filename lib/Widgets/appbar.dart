import 'package:flutter/material.dart';

class circleName extends StatelessWidget {
  const circleName({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://source.unsplash.com/random/",
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

