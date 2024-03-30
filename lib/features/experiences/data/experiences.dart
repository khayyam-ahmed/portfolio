import 'package:portfolio/features/experiences/model/experience.dart';

final experiencesList = [
  const Experience(
    job: 'Intelligent System and AI Intern',
    company: ' Hashi Technologies',
    // description:
    //     'Innovatively designed to enhance cricket players\' performance, this system integrates deep learning and computer vision. Key features include batting shot and bowling length classification, alongside insightful performance analysis tools.',
    description:
        "Developed an advanced cricket analysis app using machine learning and computer vision to decode players' performances, highlight strengths and weaknesses, and enable real-time comparisons. This intuitive mobile platform offers deep insights for strategic planning, empowering coaches and players with data-driven decision-making tools.",
    // documentationUrl:
    //     'https://1drv.ms/b/s!AnG8bbEOiG_xgaxo9L9sXS6yZ0ph4A?e=3cuKLA',
    // screenshotPath: 'assets/images/screenshots/cricace.png',
    isPresent: false,
    startYear: 2022,
    endYear: 2023,
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
  const Experience(
    job: 'Backend Developer Intern',
    company: 'Traqall',
    description:
        "Engineered a sophisticated scraper for dynamic content, automating data extraction to compile real estate listings into an Excel spreadsheet. Our solution, recognized for efficiency and outstanding performance, significantly enhanced the client's operational capabilities.",
    isPresent: false,
    startYear: 2021,
    endYear: 2021,
    technologies: [
      'Django',
      'Python',
      'Selenium',
      'BeautifulSoup',
      'Docket',
      'Excel',
    ],
  ),
  const Experience(
    job: 'Game Development and NLP Intern',
    company: 'LearnOBots',
    description:
        "As an intern, I spearheaded the development of a concept game utilizing the Phaser framework. This web-based interactive experience was designed for children, focusing on fostering engagement through sentence-based interactions with Non-Player Characters (NPCs). I played a pivotal role in crafting the virtual world, ensuring a seamless fusion of game development and natural language processing (NLP). My responsibilities included creating custom chatbots tailored to each NPC's characteristics, with the underlying NLP model trained using Torch. This experience honed my skills in both game design and NLP.",
    isPresent: false,
    startYear: 2021,
    endYear: 2021,
    technologies: ['NodeJs', 'Phaser Framework', 'Python', 'Torch', 'NLTK'],
  ),
];
