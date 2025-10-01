
import 'package:flutter/material.dart';

class DocumentsTab extends StatelessWidget {
  const DocumentsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(12),
      children: const [
        ListTile(
          leading: Icon(Icons.picture_as_pdf, color: Colors.red),
          title: Text("Business Plan"),
          subtitle: Text("PDF - 1.2 MB"),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.insert_drive_file, color: Colors.blue),
          title: Text("Rapport 1"),
          subtitle: Text("DOCX - 500 KB"),
        ),
      ],
    );
  }
}