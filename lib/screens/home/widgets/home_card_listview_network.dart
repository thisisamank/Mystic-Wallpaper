import 'package:flutter/material.dart';

class HomeCardListViewNetWork extends StatelessWidget {
  final data;

  HomeCardListViewNetWork({this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 370,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 20.0,
                )
              ]),
              child: Image.network(
                data[index].thumbnailImg,
                width: 280,
                height: 350,
                fit: BoxFit.fitWidth,
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(
          width: 30,
        ),
      ),
    );
  }
}
