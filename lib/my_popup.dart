import 'package:flutter/material.dart';

class MyPopup extends StatefulWidget {
  const MyPopup({super.key});

  @override
  State<MyPopup> createState() => _MyPopupState();
}

class _MyPopupState extends State<MyPopup> {
  int _num = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<int>(
        initialValue: _num,
        // Callback that sets the selected popup menu item.
        onSelected: (int num) {
          _num = num;
          setState(() {});
        },
        itemBuilder: (BuildContext context) {
          List<PopupMenuEntry<int>> list = <PopupMenuEntry<int>>[];

          final List<int> xx = <int>[2, 5, 2, 6, 34, 756, 1];
          xx.sort((a, b) => a.compareTo(b));

          for (int i = 0; i < xx.length; ++i) {
            list.add(
              PopupMenuItem<int>(
                value: xx[i],
                child: Text(
                  xx[i].toString(),
                ),
              ),
            );
          }

          return list;
        },
        child: Container(
          width: 100,
          height: 50,
          color: Colors.red,
          alignment: Alignment.center,
          child: Text(_num.toString()),
        ),
      ),
    );
  }
}
