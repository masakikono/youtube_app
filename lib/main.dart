import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'youtube_app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final items = List<String>.generate(10, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.videocam),
        title: const Text(
          'Flutter大学',
        ),
        actions: <Widget>[
          SizedBox(
            width: 44,
            child: ElevatedButton(
              child: Icon(Icons.search),
              onPressed: () {
                //todo
              },
            ),
          ),
          SizedBox(
            width: 44,
            child: ElevatedButton(
              child: Icon(Icons.more_vert),
              onPressed: () {
                //todo
              },
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  width: 60,
                  height: 60,
                  child: Image.network(
                      'https://yt3.ggpht.com/Acyl-4aTTupNoyoxGGRVoC46a-cxqDk1_SC1JiuV-_XeHSeZBZqNJCjLlekP85t7Iw1qqp5aSA=s176-c-k-c0x00ffffff-no-rj'),
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  children: <Widget>[
                    const Text('Flutte大学'),
                    ElevatedButton(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.video_call,
                            color: Colors.red,
                          ),
                          Text('登録する'),
                        ],
                      ),
                      onPressed: () {
                        //
                      },
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(items[index]),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
