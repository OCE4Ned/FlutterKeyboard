import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chiffres & Images',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Des chiffres et des images'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool showImage = false;
  String imageIndex = "0";

  void _showImage() {
    setState(() {
      showImage = !showImage;
    });
  }

  void _updateIndex(String newIndex){
    setState(() {
      imageIndex = newIndex;
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 222, 10, 204),

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            !showImage ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  imageIndex,
                  style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 60, color: Color.fromARGB(255, 222, 10, 204))
              ),
            ) : Container(),
            showImage == false ? KeyboardComponent(sendValueToMain:_updateIndex,) : ImageContainer(imageIndex: imageIndex)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 222, 10, 204),
        onPressed: _showImage,
        child: const Icon(Icons.add, color: Colors.white)
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class KeyboardComponent extends StatefulWidget {
  final Function(String) sendValueToMain;

  const KeyboardComponent({super.key, required this.sendValueToMain});

  @override
  State<KeyboardComponent> createState() => _KeyboardComponentState();
}

class _KeyboardComponentState extends State<KeyboardComponent> {

  String imageIndex = "0";
  Color buttonColor = const Color.fromARGB(255, 222, 10, 204);
  Color textColor = const Color.fromARGB(255, 255, 255, 255);
  EdgeInsets buttonPadding = const EdgeInsets.symmetric(vertical:0.0, horizontal: 0.0);
  RoundedRectangleBorder buttonRadius = RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0));
  EdgeInsets buttonSpacePadding = const EdgeInsets.all(8.0);
  double buttonShadow = 20.0;
  Color buttonShadowColor = const Color.fromARGB(255, 222, 10, 204);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [

      Row(mainAxisAlignment: MainAxisAlignment.center,children: [
        Padding(
          padding: buttonSpacePadding ,
          child:  ElevatedButton(
            onPressed: (){widget.sendValueToMain("0");} ,
            style: ElevatedButton.styleFrom(
                elevation: buttonShadow,
                shadowColor: buttonShadowColor,
                shape: buttonRadius,
                padding: buttonPadding,
                backgroundColor: buttonColor),
            child: Text("0", style: TextStyle(fontSize: 40, color: textColor)),
          ),
        ),
        Padding(
          padding: buttonSpacePadding,
          child:  ElevatedButton(
            onPressed: (){widget.sendValueToMain("1");} ,
            style: ElevatedButton.styleFrom(
                elevation: buttonShadow,
                shadowColor: buttonShadowColor,
                shape: buttonRadius,
                padding: buttonPadding,
                backgroundColor: buttonColor),
            child: Text("1", style: TextStyle(fontSize: 40, color: textColor)),
          ),
        ),
        Padding(
          padding: buttonSpacePadding,
          child: ElevatedButton(
            onPressed: (){widget.sendValueToMain("2");} ,
            style: ElevatedButton.styleFrom(
                elevation: buttonShadow,
                shadowColor: buttonShadowColor,
                shape: buttonRadius,
                padding: buttonPadding,
                backgroundColor: buttonColor),
            child: Text("2", style: TextStyle(fontSize: 40, color: textColor)),
          ),
        ),
      ],),
      Row(mainAxisAlignment: MainAxisAlignment.center,children: [
        Padding(
          padding: buttonSpacePadding,
          child:  ElevatedButton(
            onPressed: (){widget.sendValueToMain("3");} ,
            style: ElevatedButton.styleFrom(
                elevation: buttonShadow,
                shadowColor: buttonShadowColor,
                shape: buttonRadius,
                padding: buttonPadding,
                backgroundColor: buttonColor),
            child: Text("3", style: TextStyle(fontSize: 40, color: textColor)),
          ),
        ),
        Padding(
          padding: buttonSpacePadding,
          child:  ElevatedButton(
            onPressed: (){widget.sendValueToMain("4");} ,
            style: ElevatedButton.styleFrom(
                elevation: buttonShadow,
                shadowColor: buttonShadowColor,
                shape: buttonRadius,
                padding: buttonPadding,
                backgroundColor: buttonColor),
            child: Text("4", style: TextStyle(fontSize: 40, color: textColor)),
          ),
        ),
        Padding(
          padding: buttonSpacePadding,
          child:  ElevatedButton(
            onPressed: (){widget.sendValueToMain("5");} ,
            style: ElevatedButton.styleFrom(
                elevation: buttonShadow,
                shadowColor: buttonShadowColor,
                shape: buttonRadius,
                padding: buttonPadding,
                backgroundColor: buttonColor),
            child: Text("5", style: TextStyle(fontSize: 40, color: textColor)),
          ),
        ),
      ],),
      Row(mainAxisAlignment: MainAxisAlignment.center,children: [
        Padding(
          padding: buttonSpacePadding,
          child:  ElevatedButton(
            onPressed: (){widget.sendValueToMain("6");} ,
            style: ElevatedButton.styleFrom(
                elevation: buttonShadow,
                shadowColor: buttonShadowColor,
                shape: buttonRadius,
                padding: buttonPadding,
                backgroundColor: buttonColor),
            child: Text("6", style: TextStyle(fontSize: 40, color: textColor)),
          ),
        ),
        Padding(
          padding: buttonSpacePadding,
          child:  ElevatedButton(
            onPressed: (){widget.sendValueToMain("7");} ,
            style: ElevatedButton.styleFrom(
                elevation: buttonShadow,
                shadowColor: buttonShadowColor,
                shape: buttonRadius,
                padding: buttonPadding,
                backgroundColor: buttonColor),
            child: Text("7", style: TextStyle(fontSize: 40, color: textColor)),
          ),
        ),
        Padding(
          padding: buttonSpacePadding,
          child:  ElevatedButton(
            onPressed: (){widget.sendValueToMain("8");} ,
            style: ElevatedButton.styleFrom(
                elevation: buttonShadow,
                shadowColor: buttonShadowColor,
                shape: buttonRadius,
                padding: buttonPadding,
                backgroundColor: buttonColor),
            child: Text("8", style: TextStyle(fontSize: 40, color: textColor)),
          ),
        ),
      ],),
      Row(mainAxisAlignment: MainAxisAlignment.center,children: [
        Padding(
          padding: buttonSpacePadding,
          child:  ElevatedButton(
            onPressed: (){widget.sendValueToMain("9");} ,
            style: ElevatedButton.styleFrom(
                elevation: buttonShadow,
                shadowColor: buttonShadowColor,
                shape: buttonRadius,
                padding: buttonPadding,
                backgroundColor: buttonColor),
            child: Text("9", style: TextStyle(fontSize: 40, color: textColor)),
          ),
        )
      ],)
    ],);
  }
}


class ImageContainer extends StatefulWidget {
  final String imageIndex;

  const ImageContainer({super.key, required this.imageIndex});

  @override
  State<ImageContainer> createState() => _ImageContainerState();
}

class _ImageContainerState extends State<ImageContainer> {

  List<String> images = [
    "https://picsum.photos/300/300?random=0",
    "https://picsum.photos/300/300?random=1",
    'https://picsum.photos/300/300?random=2',
    'https://picsum.photos/300/300?random=3',
    'https://picsum.photos/300/300?random=4',
    'https://picsum.photos/300/300?random=5',
    'https://picsum.photos/300/300?random=6',
    'https://picsum.photos/300/300?random=7',
    'https://picsum.photos/300/300?random=8',
    'https://picsum.photos/300/300?random=9',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 222, 10, 204),
                blurRadius: 4,
                offset: Offset(4, 8),
              ),
            ]),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(40.0),
            child: Image.network(images[int.parse(widget.imageIndex)])),
      ),
    ],);
  }
}
