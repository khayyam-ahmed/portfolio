class Project {
  final String name;
  final String description;
  final String? githubUrl;
  final String? documentationUrl;
  final String screenshotPath;
  final List<String> technologies;
  final String? otherLinks;

  Project({
    required this.name,
    required this.description,
    this.githubUrl,
    this.documentationUrl,
    required this.screenshotPath,
    required this.technologies,
    this.otherLinks,
  });
}
