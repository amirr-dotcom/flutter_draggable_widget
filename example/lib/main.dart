
import 'package:flutter/material.dart';
import 'package:flutter_draggable_widget/flutter_draggable_widget.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final dragController = DragController();

   MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    dragController.showWidget();
                  },
                  child: const Text("Show"),
                ),
                TextButton(
                  onPressed: () {
                    dragController.hideWidget();
                  },
                  child: const Text("Hide"),
                ),
                TextButton(
                  onPressed: () {
                    dragController.jumpTo(AnchoringPosition.topRight);
                  },
                  child: const Text("Move to Top Right"),
                ),
                TextButton(
                  onPressed: () {
                    dragController.jumpTo(AnchoringPosition.topLeft);
                  },
                  child: const Text("Move to Top Left"),
                ),
                TextButton(
                  onPressed: () {
                    dragController.jumpTo(AnchoringPosition.bottomRight);
                  },
                  child: const Text("Move to bottom Right"),
                ),
                TextButton(
                  onPressed: () {
                    dragController.jumpTo(AnchoringPosition.bottomLeft);
                  },
                  child: const Text("Move to Bottom Left"),
                ),
                TextButton(
                  onPressed: () {
                    dragController.jumpTo(AnchoringPosition.center);
                  },
                  child: const Text("Move to Center"),
                ),
              ],
            ),
          ),
          Container(
            height: 80,
            width: double.infinity,
            color: Colors.green,
          ),
          FlutterDraggableWidget(
            bottomMargin: 80,
            topMargin: 80,
            intialVisibility: true,
            horizontalSpace: 20,
            shadowBorderRadius: 50,
            initialPosition: AnchoringPosition.bottomLeft,
            dragController: dragController,
            child: Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Stack(
                children: [
                  IconButton(icon: Icon(Icons.close), onPressed: () {})
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
