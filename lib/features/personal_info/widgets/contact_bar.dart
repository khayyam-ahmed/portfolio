import 'package:flutter/material.dart';
import 'package:portfolio/features/personal_info/models/contact.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactBar extends StatelessWidget {
  final List<Contact> contacts;
  const ContactBar({super.key, required this.contacts});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: contacts.map((contact) {
        return IconButton(
          tooltip: contact.tooltip,
          icon: contact.icon,
          onPressed: () async {
            await launchUrl(Uri.parse(contact.url));
          },
          padding: const EdgeInsets.only(right: 8),
        );
      }).toList(),
    );
  }
}
