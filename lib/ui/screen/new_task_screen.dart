import 'package:flutter/material.dart';
import '../widgets/summery_card.dart';
import '../widgets/task_card.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildSummerySection(),
            ListView.separated(
              itemCount: 6,
                primary: false,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const TaskCard();
                },
                separatorBuilder: (context, index) => const SizedBox(height: 8,),  )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildSummerySection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SummeryCard(
              title: 'New',
              count: 12,
            ),
            SummeryCard(
              title: 'Progress',
              count: 2,
            ),
            SummeryCard(
              title: 'Computed',
              count: 32,
            ),
            SummeryCard(
              title: 'Cancelled',
              count: 12,
            ),
          ],
        ),
      ),
    );
  }
}


