import 'package:flutter/material.dart';

class AccessibilityWidget extends StatelessWidget {
  const AccessibilityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Accessibility Widget"),
        bottom: PreferredSize(
          preferredSize:
              Size(MediaQuery.of(context).size.width, kToolbarHeight),
          child: const Text(
            "Need to Turn on Voice Over to test Accessibility Widgets",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const Text("Exclude Semantics"),
            ExcludeSemantics(
              child: Container(
                width: 100,
                height: 100,
                color: Colors.amber,
                child: ElevatedButton(
                    onPressed: () {
                      debugPrint("Tap Me");
                    },
                    child: const Text("Tap Me")),
              ),
            ),
            const Divider(),
            const Text("Semantics"),
            Semantics(
              label: "This is a container widget with amber color",
              child: Container(
                width: 100,
                height: 100,
                color: Colors.amber,
              ),
            ),
            const Divider(),
            const Text("MergeSemantics"),
            MergeSemantics(
              child: Row(
                children: <Widget>[
                  Checkbox(
                    value: true,
                    onChanged: (bool? value) {},
                  ),
                  const Text('I agree to the terms and conditions'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
