import 'package:flutter/material.dart';

class BannerTitleWidget extends StatelessWidget {
  const BannerTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: SizedBox(
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Banner Title',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              width: size.width * .35,
              height: size.height * .04,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(elevation: 5),
                onPressed: () {},
                child: const Text(
                  "BUTTON",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
