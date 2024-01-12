import 'package:flutter/material.dart';
import 'package:luxedu/styles/lx_text.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LuxEdu"),
      ),
      body: Column(
        children: [
          LXText(context: context, string: "Halo").getP(1),
        ],
      ),
    );
  }
}
