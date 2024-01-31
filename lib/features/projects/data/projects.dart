import 'package:portfolio/features/projects/models/project.dart';

final projectsList = [
  Project(
    name: 'Portfolio',
    description:
        'Showcasing my technical journey, this portfolio website is structured using a feature-first approach. Developed with Flutter Web, it is efficiently hosted on GitHub Pages, highlighting my front-end and hosting capabilities.',
    githubUrl: 'https://github.com/khayyam-ahmed/portfolio#readme',
    screenshotPath: 'assets/images/screenshots/portfolio.png',
    technologies: [
      'Flutter',
      'GitHub Actions',
      'GitHub Pages',
    ],
  ),
  Project(
    name: 'Intelligent System for Cricket Performance Analysis',
    description:
        'Innovatively designed to enhance cricket players\' performance, this system integrates deep learning and computer vision. Key features include batting shot and bowling length classification, alongside insightful performance analysis tools.',
    // githubUrl: 'https://github.com/khayyam-ahmed/cricace-api',
    documentationUrl:
        'https://1drv.ms/b/s!AnG8bbEOiG_xgaxo9L9sXS6yZ0ph4A?e=3cuKLA',
    screenshotPath: 'assets/images/screenshots/cricace.png',
    technologies: [
      'OpenCV',
      'YOLO v8',
      'PIL',
      'TensorFlow Keras',
      'Darknet',
      'Torch',
      'Flutter',
      'Firebase',
      'Firebase Hosting',
    ],
  ),
  Project(
    name: 'Real-Estate Website Scraper (zbuyer.com)',
    description:
        'A Python-based scraper developed for zbuyer.com, employing Selenium and BeautifulSoup for dynamic content handling. The project outputs an organized Excel spreadsheet, reflecting my skills in data extraction and automation.',
    githubUrl: '',
    screenshotPath: 'assets/images/screenshots/zbuyer.png',
    technologies: [
      'Python',
      'Selenium',
      'BeautifulSoup',
      'Excel',
    ],
  ),
  Project(
    name: 'Chat App',
    description:
        'A real-time chat application developed in Flutter, leveraging Firebase services. It encompasses user authentication, image uploads, push notifications, and cloud database integration, demonstrating my proficiency in app development and backend integration.',
    githubUrl: 'https://github.com/khayyam-ahmed/chat_app',
    screenshotPath: 'assets/images/screenshots/chat_app.png',
    technologies: [
      'Flutter',
      'Firebase',
      'Firebase Hosting',
    ],
  ),
];

  // Project(
  //   name: 'MealExplorer',
  //   description:
  //       "Undertaken as part of a guided project through a comprehensive Flutter course, \"MealExplorer\" is an educational initiative focused on Flutter widgets, state management using RiverPod, intricate app architecture, and animations. The project, inspired by Maximillian Schwarzmüller's course, allows users to navigate, filter, and manage meals, catering to dietary preferences such as vegan, vegetarian, and gluten-free options. Its intuitive interface, featuring a bottom tab bar and side drawer, ensures seamless exploration on both Android and iOS platforms.",
  //   githubUrl: 'https://github.com/khayyam-ahmed/meals',
  //   screenshotPath: 'assets/images/screenshots/meals.png',
  //   technologies: ['Flutter', 'RiverPod', 'Animations'],
  // ),
  // Project(
  //   name: 'SnapScape: Explore & Save',
  //   description:
  //       'Developed a mobile app leveraging Flutter and Dart, integrating native device functionalities. Employed Riverpod for state management to capture and save favorite places with images. Implemented GPS functionality for real-time location tracking and Google Maps API for interactive map displays. Applied local storage for efficient data management.',
  //   githubUrl: 'https://github.com/khayyam-ahmed/favorite_places',
  //   screenshotPath: 'assets/images/screenshots/favorite_places.png',
  //   technologies: [
  //     'Flutter',
  //     'Firebase',
  //     'RiverPod',
  //     'Google Maps API',
  //   ],
  // ),
  // Project(
  //   name: 'EE 433 Digital Image Processing',
  //   description:
  //       'Developed an algorithm to remove night light pollution and enhance star visibility from images of the night sky. Applied Fourier Transform to filter out the pollution frequencies and amplify the star frequencies. Utilized PIL, Matplotlib, and numpy modules in Python.',
  //   // githubUrl: 'https://github.com/khayyam-ahmed/portfolio#readme',
  //   screenshotPath: 'assets/images/screenshots/dip_project.png',
  //   technologies: [
  //     'OpenCV',
  //     'Matplotlib',
  //     'PIL',
  //   ],
  // ),

