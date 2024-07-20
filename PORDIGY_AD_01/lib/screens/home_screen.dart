import 'package:cal_app/provider/cal_provider.dart';
import 'package:cal_app/widgets/equal_button.dart';
import 'package:cal_app/widgets/textfeild.dart';
import 'package:cal_app/widgets/widget_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.sizeOf(context).height * 0.6;
    const pad = EdgeInsets.symmetric(horizontal: 25, vertical: 30);
    const decor = BoxDecoration(
      color: Color.fromARGB(255, 57, 58, 58),
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(50),
      ),
    );
    return Consumer<CalculatorProvider>(builder: (context, provider, _) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Calculator App"),  
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            CustomTextWidget(
              controller: provider.compController,
            ),
            const Spacer(),
            Container(
              height: screenheight,
              width: double.infinity,
              padding: pad,
              decoration: decor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      4,
                      (index) => buttonList[index],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      4,
                      (index) => buttonList[index + 4],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      4,
                      (index) => buttonList[index + 8],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                3,
                                (index) => buttonList[index + 12],
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                3,
                                (index) => buttonList[index + 15],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 30),
                      const EqualButton(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
