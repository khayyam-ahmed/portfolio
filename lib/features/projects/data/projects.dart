import 'package:portfolio/features/projects/models/project.dart';

final projectsList = [
  Project(
    name: 'Portfolio',
    description:
        'Yes it is this portfolio website. This project follows a feature-first approach for its structure. It is built with Flutter Web and hosted on GitHub Pages',
    githubUrl: 'https://github.com/khayyam-ahmed/portfolio#readme',
    screenshotPath: 'assets/images/screenshots/portfolio.png',
    technologies: [
      'Flutter',
      'GitHub Actions',
      'GitHub Pages',
    ],
  ),
  Project(
    name: 'CS 499 Final Year Project',
    description:
        'Developed an intelligent system to analyze gameplay and assist in improving performance of cricket players using deep learning and computer vision techniques. Implemented features such as bowling length classification, batting shot classification, strong and weak points identification, and performance comparison.',
    githubUrl: 'https://github.com/khayyam-ahmed/cricace-api',
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
    name: 'Guided Project: Chat App',
    description:
        'Developed a Flutter app that allows users to chat with each other in real-time using Firebase services. Implemented features such as user authentication, image upload, push notifications, and cloud database. Used Dart, HTML, CSS, and JavaScript languages.',
    githubUrl: 'https://github.com/khayyam-ahmed/portfolio#readme',
    screenshotPath: 'assets/images/screenshots/chat_app.png',
    technologies: [
      'Flutter',
      'Firebase',
      'Firebase Hosting',
    ],
  ),
  Project(
    name: 'EE 433 Digital Image Processing',
    description:
        'Developed an algorithm to remove night light pollution and enhance star visibility from images of the night sky. Applied Fourier Transform to filter out the pollution frequencies and amplify the star frequencies. Utilized PIL, Matplotlib, and numpy modules in Python.',
    // githubUrl: 'https://github.com/khayyam-ahmed/portfolio#readme',
    screenshotPath: 'assets/images/screenshots/chat_app.png',
    technologies: [
      'OpenCV',
      'Firebase',
      'Firebase Hosting',
    ],
  ),
];
