import 'package:flutter/cupertino.dart';
import 'package:portfolio/common/widgets/responsive.dart';
import 'package:portfolio/features/personal_info/personal_info_desktop.dart';
import 'package:portfolio/features/personal_info/personal_info_mobile.dart';
import 'package:portfolio/features/personal_info/personal_info_tablet.dart';

class PersonalInfoSection extends StatelessWidget {
  const PersonalInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      desktop: PersonalInfoDesktop(),
      tablet: PersonalInfoTablet(),
      mobile: PersonalInfoMobile(),
    );
  }
}
