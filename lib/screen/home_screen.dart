import "package:flutter/material.dart";
import "package:maybe_marquee/widget/maybe_marquee.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Maybe Marquee"),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              color: Theme.of(context).colorScheme.primaryContainer,
              width: MediaQuery.of(context).size.width / 1,
              child: Column(
                children: <Widget>[
                  const Text("Width / 1:"),
                  const SizedBox(height: 8),
                  commonMaybeMarqueeTextWidget(),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              color: Theme.of(context).colorScheme.primaryContainer,
              width: MediaQuery.of(context).size.width / 2,
              child: Column(
                children: <Widget>[
                  const Text("Width / 2:"),
                  const SizedBox(height: 8),
                  commonMaybeMarqueeTextWidget(),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              color: Theme.of(context).colorScheme.primaryContainer,
              width: MediaQuery.of(context).size.width / 3,
              child: Column(
                children: <Widget>[
                  const Text("Width / 3:"),
                  const SizedBox(height: 8),
                  commonMaybeMarqueeTextWidget(),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              color: Theme.of(context).colorScheme.primaryContainer,
              width: MediaQuery.of(context).size.width / 4,
              child: Column(
                children: <Widget>[
                  const Text("Width / 4:"),
                  const SizedBox(height: 8),
                  commonMaybeMarqueeTextWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget commonMaybeMarqueeTextWidget() {
    return const Column(
      children: <Widget>[
        MaybeMarqueeText(
          text: "This is a Short Text",
          style: TextStyle(),
        ),
        MaybeMarqueeText(
          // ignore: lines_longer_than_80_chars
          text: "This is a Very Very Very Very Very Very Very Very Very Very Very Very Very Very Very Long Text",
          style: TextStyle(),
        ),
      ],
    );
  }
}
