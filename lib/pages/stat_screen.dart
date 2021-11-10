import 'package:flutter/material.dart';

class myStatPage extends StatelessWidget {
  myStatPage({Key? key, required this.name}) : super(key: key);
  String name;
  final String title = 'Stats';

  var AVGcol = Column(
    mainAxisSize: MainAxisSize.max,
    children: const [
      Text("Avg ",
          style: TextStyle(
            fontSize: 25,
          )),
      Text(".256 ",
          style: TextStyle(
            fontSize: 25,
          )),
    ],
  );

  var OBPcol = Column(
    mainAxisSize: MainAxisSize.max,
    children: const [
      Text("OBP",
          style: TextStyle(
            fontSize: 25,
          )),
      Text(".310 ",
          style: TextStyle(
            fontSize: 25,
          )),
    ],
  );

  var SLGcol = Column(
    mainAxisSize: MainAxisSize.max,
    children: const [
      Text("SLG ",
          style: TextStyle(
            fontSize: 25,
          )),
      Text(".556 ",
          style: TextStyle(
            fontSize: 25,
          )),
    ],
  );
  var OPScol = Column(
    mainAxisSize: MainAxisSize.max,
    children: const [
      Text("OBP ",
          style: TextStyle(
            fontSize: 25,
          )),
      Text(".866 ",
          style: TextStyle(
            fontSize: 25,
          )),
    ],
  );
  var RBIcol = Column(
    mainAxisSize: MainAxisSize.max,
    children: const [
      Text("RBI ",
          style: TextStyle(
            fontSize: 25,
          )),
      Text("495 ",
          style: TextStyle(
            fontSize: 25,
          )),
    ],
  );
  var BBcol = Column(
    mainAxisSize: MainAxisSize.max,
    children: const [
      Text("BB ",
          style: TextStyle(
            fontSize: 25,
          )),
      Text("225 ",
          style: TextStyle(
            fontSize: 25,
          )),
    ],
  );
  var HRcol = Column(
    mainAxisSize: MainAxisSize.max,
    children: const [
      Text("HR ",
          style: TextStyle(
            fontSize: 25,
          )),
      Text("154 ",
          style: TextStyle(
            fontSize: 25,
          )),
    ],
  );

  var XBHcol = Column(
    mainAxisSize: MainAxisSize.max,
    children: const [
      Text("xBH ",
          style: TextStyle(
            fontSize: 25,
          )),
      Text("344 ",
          style: TextStyle(
            fontSize: 25,
          )),
    ],
  );


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:  Text(title),
        //automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 10.0),
            Text(name,
                style: TextStyle(
                  fontSize: 35,
                )),
            const SizedBox(height: 15.0),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              AVGcol,
              OBPcol,
              SLGcol,
              OPScol,
            ]),
            const SizedBox(height: 17.0),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              RBIcol,
              HRcol,
              BBcol,
              XBHcol,
            ]),
          ],
        ),
      ),
    );
  }
}

// var statTitleRow = Container(
//   margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
//   padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
//   child: Row(
//     mainAxisSize: MainAxisSize.max,
//     children: const [
//       Text("Avg ",
//           style: TextStyle(
//             fontSize: 20,
//           )),
//       Text("OBP",
//           style: TextStyle(
//             fontSize: 20,
//           )),
//       Text("SLG ",
//           style: TextStyle(
//             fontSize: 20,
//           )),
//       Text("OBP ",
//           style: TextStyle(
//             fontSize: 20,
//           )),
//     ],
//   ),
// );
//
// var statNumRow = Container(
//   margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
//   padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
//   child: Container(
//     child: Row(
//       mainAxisSize: MainAxisSize.max,
//       children: const <Widget>[
//         Text(".256 ",
//             style: TextStyle(
//               fontSize: 20,
//             )),
//         Text(".310",
//             style: TextStyle(
//               fontSize: 20,
//             )),
//         Text(".556 ",
//             style: TextStyle(
//               fontSize: 20,
//             )),
//         Text(".310",
//             style: TextStyle(
//               fontSize: 20,
//             )),
//       ],
//     ),
//   ),
// );
