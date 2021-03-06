import 'package:boring_flutter_show/data/articles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Article> _articles = articles;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: RefreshIndicator(
          onRefresh: () async {
            await Future.delayed(const Duration(seconds: 1));
            setState(() {
              _articles.removeAt(0);
            });
          },
          child: ListView(children: _articles.map(_buildItem).toList())),
    );
  }

  Widget _buildItem(Article article) {
    return Padding(
      key: Key(article.text),
      padding: const EdgeInsets.all(10.0),
      child: ExpansionTile(
        title: Text(
          article.text,
          style: TextStyle(fontSize: 20),
        ),
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Text("${article.commentsCount} comments"),
            IconButton(
              icon: Icon(Icons.launch),
              onPressed: () async {
                var fakeUrl = 'https://${article.domain}';
                if (await canLaunch(fakeUrl)) {
                  launch(fakeUrl);
                }
              },
            )
          ])
        ],
      ),
    );
  }
}
