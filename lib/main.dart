import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/core.dart';
import 'package:syncfusion_flutter_core/localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black12,
          body: Column(
            children: [
              Stack(
                children: [
                  Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.top,
                    children: const [
                      TableRow(children: [
                        Text(
                          "SU",
                          style: TextStyle(
                              fontFamily: 'Sono',
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ])
                    ],
                    border: TableBorder.all(),
                  ),
                ],
              ),
            ],
          )),
    );
    // Directionality(
    //     textDirection: TextDirection.ltr,
    //     child: Localizations(
    //       delegates: [delegate],
    //       locale: Locale('en', ''),
    //       child: Column(
    //         children: [
    //           Table(
    //             defaultVerticalAlignment: TableCellVerticalAlignment.top,
    //             children: const [
    //               TableRow(children: [
    //                 Text(
    //                   "SU",
    //                   style: TextStyle(
    //                       fontFamily: 'Sono',
    //                       fontSize: 40,
    //                       fontWeight: FontWeight.bold),
    //                 ),
    //               ])
    //             ],
    //             border: TableBorder.all(),
    //           ),
    //           Picker()
    //         ],
    //       ),
    //     )

    //     // Column(
    //     //   children: [
    //     //     Text("Hello world"),
    //     //     Container(
    //     //         child: Directionality(
    //     //       textDirection: TextDirection.ltr,
    //     //       child: ElevatedButton(onPressed: () {}, child: Text("Hello world")),
    //     //     )),
    //     //   ],
    //     // ),
    //     );
  }
}

class Picker extends StatelessWidget {
  const Picker({super.key});

  @override
  Widget build(BuildContext context) {
    return DatePickerDialog(
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year, DateTime.december, 31),
    );
  }
}
