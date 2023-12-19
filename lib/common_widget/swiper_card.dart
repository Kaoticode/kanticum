import 'package:flutter/material.dart';

class SwiperCards extends StatelessWidget {
  const SwiperCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const usersPromotion = [
      {
        "image": "https://images.pexels.com/photos/417074/pexels-photo-417074.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      },
    ];
    return Center(
      child: Container(
        width: 350,
        height: 600,
        color: Colors.white10,
      ),
    );
  }
}
