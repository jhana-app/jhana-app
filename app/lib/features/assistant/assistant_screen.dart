import 'package:flutter/material.dart';
// import 'package:jhanas/atoms/button_outline.dart';
import 'package:jhanas/atoms/page_title.dart';
import 'package:jhanas/atoms/under_development.dart';
import 'package:jhanas/layout/layout.dart';
// import 'package:jhanas/features/assistant/widgets/assistant_message.dart';

class AssistantScreen extends StatelessWidget {
  const AssistantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageLayout(
      child: Column(
        children: [
          // Expanded(
          //   child: CustomScrollView(
          //     slivers: [
          //       SliverToBoxAdapter(
          //         child: Padding(
          //           padding: const EdgeInsets.symmetric(horizontal: 16),
          //           child: Column(
          //             mainAxisAlignment: MainAxisAlignment.start,
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          PageTitle('Assistant', fontSize: 28),
          Expanded(
            child: Center(
              child: UnderDevelopment(),
            ),
          ),
          // SizedBox(height: 22),
          // AssistantMessage(
          //   avatar: Image.asset('assets/images/mocks/foxie.jpg')
          //       .image,
          //   name: 'Foxie',
          //   dateTime:
          //       DateTime.now().subtract(Duration(minutes: 5)),
          //   body:
          //       'Hi Slava, I noticed you have had some issues with dullness at the last session.\nI have a few practices that can increase  your energy level.',
          // ),
          // SizedBox(height: 22),
          // AssistantMessage(
          //   avatar: Image.asset('assets/images/mocks/foxie.jpg')
          //       .image,
          //   name: 'Foxie',
          //   dateTime:
          //       DateTime.now().subtract(Duration(minutes: 2)),
          //   body: 'Do you want to add these practices?',
          //   actions: [
          //     ButtonOutline(
          //       onPressed: () {},
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         children: [
          //           Icon(Icons.add, size: 18),
          //           SizedBox(width: 8),
          //           Text('Body scanning'),
          //         ],
          //       ),
          //     ),
          //     ButtonOutline(
          //       onPressed: () {},
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         children: [
          //           Icon(Icons.add, size: 18),
          //           SizedBox(width: 8),
          //           Text('Close following'),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
          //       ],
          //     ),
          //   ),
          // ),
          // ],
          // ),
          // ),
          // SizedBox(height: 6),
          // Padding(
          //   padding: const EdgeInsets.all(16),
          //   child: TextFormField(
          //     cursorColor: Colors.white,
          //     style: const TextStyle(fontSize: 18, color: Colors.white),
          //     decoration: InputDecoration(
          //       border: OutlineInputBorder(),
          //       labelText: 'Message',
          //       labelStyle: TextStyle(fontSize: 16),
          //     ),
          //     onChanged: (value) {},
          //   ),
          // ),
        ],
      ),
    );
  }
}
