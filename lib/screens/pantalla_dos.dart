import 'package:flutter/material.dart';

class PantallaDos extends StatelessWidget {
  const PantallaDos({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: isLoading(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return const LoadedScreen();
        }
        return const Loading();
      },
    );
  }

  Future isLoading() {
    return Future.delayed(const Duration(milliseconds: 2000));
  }
}

class LoadedScreen extends StatelessWidget {
  const LoadedScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        "CARGADO CON EXITO",
        style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
      )),
    );
  }
}

class Loading extends StatelessWidget {
  const Loading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
