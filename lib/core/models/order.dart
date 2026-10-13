class Order {
  final String id;
  final String tenantId;
  final double totalAmount;
  final String status;

  Order({
    required this.id,
    required this.tenantId,
    required this.totalAmount,
    required this.status,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      id: json['id'] ?? '',
      tenantId: json['tenantId'] ?? '',
      totalAmount: (json['amount'] as num?)?.toDouble() ?? 0.0,
      status: json['status'] ?? 'pending',
    );
  }
}
