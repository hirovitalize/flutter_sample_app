import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/presentation/book_list/book_list_page.dart';
import 'package:provider_app/presentation/main/main_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String okazakiText = '岡﨑';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
       home: ChangeNotifierProvider<MainModel>(
         create: (_) => MainModel(),
         child: Scaffold(
           appBar: AppBar(
             title: Text('岡崎'),
           ),
           body: Consumer<MainModel>(builder: (context, model, child) {
               return Center(
                 child: Column(
                   children: [
                     Text(
                       model.okazakiText,
                       style: TextStyle(
                         fontSize: 30,
                       ),
                     ),
                     RaisedButton(
                       child: Text('ボタン'),
                       onPressed: (){
                         // ここで何か？
                         Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => BookListPage()),
                         );
                       },
                     ),
                   ],
                 ),
               );
             }
           ),
         ),
       ),
    );
  }
}

