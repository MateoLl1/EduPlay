class SoftwareTema {
  final int id;
  final String title;
  final String caption;
  final String image;
  final String? url;

  SoftwareTema({
    required this.id,
    required this.title,
    required this.caption,
    required this.image,
    this.url,
  });
}
