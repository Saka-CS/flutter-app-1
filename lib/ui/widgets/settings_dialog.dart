import 'package:flutter/material.dart';

class ViewSettingsDialog extends StatelessWidget {
  const ViewSettingsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(),
      ),
    );
  }
}
