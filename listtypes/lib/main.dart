import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListView Examples',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView Examples'),
        ),
        body: const ListViewExamples(),
      ),
    );
  }
}

class ListViewExamples extends StatelessWidget {
  const ListViewExamples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var simpleList = ['Apple', 'Banana', 'Mango', 'Orange','Apple', 'Banana', 'Mango', 'Orange','Apple', 'Banana', 'Mango', 'Orange'];
    var builderList = ['One', 'Two', 'Three', 'Four','Apple', 'Banana', 'Mango', 'Orange','Apple', 'Banana', 'Mango', 'Orange'];
    var separatedList = ['Red', 'Green', 'Blue', 'Yellow','Apple', 'Banana', 'Mango', 'Orange','Apple', 'Banana', 'Mango', 'Orange'];
    var listTileList = ['Amit', 'Rahul', 'Sita','Apple', 'Banana', 'Mango', 'Orange','Apple', 'Banana', 'Mango', 'Orange'];

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Simple ListView'),
          ),
          SizedBox(
            height: 100,
            child: ListView(
              children: simpleList.map((item) => Text(item)).toList(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('ListView.builder'),
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: builderList.length,
              itemBuilder: (context, index) => Text(builderList[index]),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('ListView.separated'),
          ),
          SizedBox(
            height: 100,
            child: ListView.separated(
              itemCount: separatedList.length,
              itemBuilder: (context, index) => Text(separatedList[index]),
              separatorBuilder: (context, index) => const Divider(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('ListView.custom'),
          ),
          SizedBox(
            height: 100,
            child: ListView.custom(
              childrenDelegate: SliverChildBuilderDelegate(
                (context, index) => Text('Custom Item $index'),
                childCount: 5,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('ListView with ListTile'),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: listTileList.length,
              itemBuilder: (context, index) => ListTile(
                leading: const Icon(Icons.person),
                title: Text(listTileList[index]),
                subtitle: Text('Subtitle ${listTileList[index]}'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
