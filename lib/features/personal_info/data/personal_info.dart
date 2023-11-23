import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/features/personal_info/models/contact.dart';

List<Contact> contactsList = [
  Contact(
    url: "https://www.linkedin.com/in/khayyam-ahmed-83278a248/",
    tooltip: "LinkedIn",
    icon: const Icon(FontAwesomeIcons.linkedin),
  ),
  Contact(
    url: "https://github.com/khayyam-ahmed/",
    tooltip: "GitHub",
    icon: const Icon(FontAwesomeIcons.github),
  ),
  Contact(
    url: "mailto:ahmed.khayyam012@gmail.com",
    tooltip: "ahmed.khayyam012@gmail.com",
    icon: const Icon(FontAwesomeIcons.envelope),
  ),
  Contact(
    url: "tel:923494178183",
    tooltip: "+92 349 4178183",
    icon: const Icon(FontAwesomeIcons.phone),
  ),
];

// String resumeUrl =
//     'https://drive.google.com/file/d/1PAaR0K1X8QKGv719psOGeo3TducUsFen/view?usp=sharing';
String resumeUrl =
    'https://1drv.ms/b/s!AnG8bbEOiG_xgaszUGbNvoHn7Kxs-g?e=346fU6';
