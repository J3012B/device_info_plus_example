import 'package:device_info_plus/device_info_plus.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Device Info Plus Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: FutureBuilder(
              future: DeviceInfoPlugin().androidInfo,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const CircularProgressIndicator();
                }

                final androidInfo = snapshot.data!;

                return Column(
                  // Column is also a layout widget. It takes a list of children and
                  // arranges them vertically. By default, it sizes itself to fit its
                  // children horizontally, and tries to be as tall as its parent.
                  //
                  // Invoke "debug painting" (press "p" in the console, choose the
                  // "Toggle Debug Paint" action from the Flutter Inspector in Android
                  // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
                  // to see the wireframe for each widget.
                  //
                  // Column has various properties to control how it sizes itself and
                  // how it positions its children. Here we use mainAxisAlignment to
                  // center the children vertically; the main axis here is the vertical
                  // axis because Columns are vertical (the cross axis would be
                  // horizontal).
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Physical device: ${androidInfo.isPhysicalDevice.toString()}",
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Board: ${androidInfo.board}",
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Bootloader: ${androidInfo.bootloader}",
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Brand: ${androidInfo.brand}",
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Device: ${androidInfo.device}",
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Display: ${androidInfo.display}",
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Fingerprint: ${androidInfo.fingerprint}",
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Hardware: ${androidInfo.hardware}",
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Host: ${androidInfo.host}",
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Id: ${androidInfo.id}",
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Manufacturer: ${androidInfo.manufacturer}",
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Model: ${androidInfo.model}",
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Product: ${androidInfo.product}",
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Supported32BitAbis: ${androidInfo.supported32BitAbis}",
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Supported32BitAbis: ${androidInfo.supported64BitAbis}",
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "SupportedAbis: ${androidInfo.supportedAbis}",
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "SystemFeatures: ${androidInfo.systemFeatures}",
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Tags: ${androidInfo.tags}",
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Version.baseOS: ${androidInfo.version.baseOS}",
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Version.codename: ${androidInfo.version.codename}",
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Version.incremental: ${androidInfo.version.incremental}",
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Version.previewSdkInt: ${androidInfo.version.previewSdkInt}",
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Version.release: ${androidInfo.version.release}",
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Version.sdkInt: ${androidInfo.version.sdkInt}",
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Version.securityPatch: ${androidInfo.version.securityPatch}",
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
