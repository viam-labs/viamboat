import 'package:flutter/cupertino.dart';
import 'package:viam_marine/example/presentation/page/example_page/widgets/example_cell.dart';

class ExamplePage extends StatelessWidget {
  const ExamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) => const ExampleCell(),
    );
  }
}
