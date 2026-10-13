class Tenant {
  final String id;
  final String name;
  final String slug;
  final String domain;

  Tenant({
    required this.id,
    required this.name,
    required this.slug,
    required this.domain,
  });

  factory Tenant.fromJson(Map<String, dynamic> json) {
    return Tenant(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      slug: json['slug'] ?? '',
      domain: json['domain'] ?? '',
    );
  }
}
