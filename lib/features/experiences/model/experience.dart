class Experience {
  final String job;
  final String company;
  final String description;
  final bool isPresent;
  final int startYear;
  final int endYear;
  final List<String> technologies;
  final String? url;
  final List<String>? links;

  const Experience({
    required this.job,
    required this.company,
    required this.description,
    required this.isPresent,
    required this.startYear,
    required this.endYear,
    required this.technologies,
    this.url,
    this.links,
  });
}
