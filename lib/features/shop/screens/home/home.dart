import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
