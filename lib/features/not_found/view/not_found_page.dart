import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage(
  deferredLoading: true,
)
class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
