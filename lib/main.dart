import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String message =
      "Dentro del enorme archipiélago de Indonesia, el cuarto país más poblado del mundo, las islas más grandes son Sumatra, Java, Kalimantan (la parte indonesia de Borneo), Sulawesi y la parte indonesia de Papúa Nueva Guinea (conocida como Irian Jaya). Todas estas islas son montañosas, con densos bosques tropicales y, en algunas, hay volcanes activos.";

  double fontSize = 12.0;

  double redValue = 0;
  double greenValue = 0;
  double blueValue = 0;
  int position = 0;
  List<String> images = [
    "https://media.istockphoto.com/id/183751203/es/foto/en-kayak-en-el-de-abel-tasman.jpg?s=612x612&w=is&k=20&c=NxRkZy3d47FhjOXoQgK_IGI6a8ZgG3faOfXjFr8flkQ=",
    "https://media.istockphoto.com/id/183330230/es/foto/en-kayak-en-el-de-abel-tasman.jpg?s=1024x1024&w=is&k=20&c=kX9OxRmDRMLGpk9oy9xtIU9ohV6sIKccK7VHPxMOatM=",
    "https://media.istockphoto.com/id/1179235120/es/foto/mujer-atl%C3%A9tica-escalando-sobre-la-roca-del-acantilado-sobresaliendo-con-fondo-del-cielo-de-la.jpg?s=612x612&w=is&k=20&c=lNDXa5ru17tZ7o5C_Vo_Gi_wZI6O1JrTopw5jdWcYeU=",
    "https://media.istockphoto.com/id/904172104/es/foto/hemos-dicho-todo-este-camino-me-siento-orgulloso.jpg?s=612x612&w=is&k=20&c=bO7AQf_QhBNNf-1lzQ4i5y01qMO7BpYfNaMSyrO2yaA=",
    "https://media.istockphoto.com/id/904172130/es/foto/d%C3%B3nde-estamos-apagado-ahora.jpg?s=1024x1024&w=is&k=20&c=rvIM2gb_yn6A15_p9G-MFSNrX-qHDaqHFpfCv7s2qjc=",
  ];

  void showMessage() {
    print("El mensaje es $message");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                message,
                style: TextStyle(
                  fontSize: fontSize,
                  color: Color.fromARGB(greenValue.toInt(), redValue.toInt(),
                      blueValue.toInt(), 1),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  fontSize = fontSize + 1;
                  setState(() {});
                },
                child: const Text("Update"),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Text(
                "Valor del Slider ::::.....: $redValue",
              ),
              Slider(
                value: redValue,
                min: 0,
                max: 100,
                thumbColor: Colors.red,
                activeColor: Colors.amber,
                inactiveColor: Colors.indigo,
                onChanged: (double matasquita) {
                  redValue = matasquita;
                  setState(() {});
                },
              ),
              Text(
                "Valor del Slider ::::.....: $greenValue",
              ),
              Slider(
                value: greenValue,
                min: 0,
                max: 100,
                thumbColor: Colors.red,
                activeColor: Colors.amber,
                inactiveColor: Colors.indigo,
                onChanged: (double matasquita) {
                  greenValue = matasquita;
                  setState(() {});
                },
              ),
              Text(
                "Valor del Slider ::::.....: $blueValue",
              ),
              Slider(
                value: blueValue,
                min: 0,
                max: 100,
                thumbColor: Colors.red,
                activeColor: Colors.amber,
                inactiveColor: Colors.indigo,
                onChanged: (double matasquita) {
                  blueValue = matasquita;
                  setState(() {});
                },
              ),
              Image.network(
                images[position],
                height: 260,
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (position > 0) {
                        position--;
                        // position = position - 1;
                        setState(() {});
                      }
                    },
                    child: const Text("Anterior"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (position < images.length - 1) {
                        position++;
                        setState(() {});
                      }
                      //position = position + 1;
                    },
                    child: const Text("Siguiente"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
