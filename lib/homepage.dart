import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        loadingContainer(),
        Container(
            alignment: Alignment.bottomLeft,
            child: Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 20.h,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    border: Border.all(color: Colors.black12, width: 1.5),
                  ),
                  child: Center(child: const Text('Getting the location...')),
                ))),
      ]),
    );
  }

  Widget loadingContainer() {
    return Container(
      color: Colors.white,
      height: 100.h,
      width: 100.w,
      child: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 30.h,
          ),
          const Text("Loading bro ..."),
          SizedBox(
            height: 4.h,
          ),
          CupertinoActivityIndicator()
        ],
      )),
    );
  }
}
