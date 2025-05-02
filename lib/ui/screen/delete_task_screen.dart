import 'package:flutter/material.dart';

import '../widgets/task_card.dart';

class DeleteTaskScreen extends StatefulWidget {
  const DeleteTaskScreen({super.key});

  @override
  State<DeleteTaskScreen> createState() => _DeleteTaskScreenState();
}

class _DeleteTaskScreenState extends State<DeleteTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 6,
        itemBuilder: (context, index) {
          return const TaskCard();
        },
        separatorBuilder: (context, index) => const SizedBox(
          height: 8,
        ),
      ),

    );
  }
}
