import 'package:flutter/material.dart';

class RecCard extends StatelessWidget {
  const RecCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 60,
      margin: const EdgeInsets.all(5.0),
      // margin: const EdgeInsets.all(10)
      decoration: BoxDecoration(
          color: Colors.grey.shade600.withAlpha(50),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(children: const [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Image(
                image: AssetImage('assets/album_1.jpeg'), fit: BoxFit.fill),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text("Man on the Moon III",
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.w600)),
            ),
          )
        ]),
      ),
    );
  }
}
