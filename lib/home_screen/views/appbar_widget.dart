import 'package:flutter/material.dart';

import '../../constends/colors.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        const SizedBox(
          width: 14,
        ),
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 30),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "U",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3.5),
                    child: Text(
                      'Logo',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: orangeColor),
                    ),
                  )
                ],
              ),
            ),
            const Positioned(
              top: 29,
              child: Text(
                "Up",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        SizedBox(
          width: size.width * .30,
        ),
        Expanded(
          child: TextFormField(
            style: const TextStyle(fontSize: 20),
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
              fillColor: whiteColor,
              filled: true,
              border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              alignLabelWithHint: false,
              label: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text('Search'),
                  Image.asset(
                    width: size.width * .09,
                    "assets/timeimage.png",
                  ),
                  const Icon(
                    Icons.search,
                    color: greyColor,
                  )
                ],
              ),
              hintText: "Search",
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
