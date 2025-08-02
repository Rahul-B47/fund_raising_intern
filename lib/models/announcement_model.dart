class AnnouncementModel {
  final String title;
  final String content;
  final String date;
  final String? type;       // e.g., "update", "event", "urgent"
  final bool isNew;         // To show badge or highlight
  final String? ctaLink;    // Optional call-to-action link or deep link

  AnnouncementModel({
    required this.title,
    required this.content,
    required this.date,
    this.type,
    this.isNew = false,
    this.ctaLink,
  });
}
