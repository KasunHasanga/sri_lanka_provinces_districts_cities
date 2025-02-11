/// Represents a province with details such as its name and unique ID.
class Province {
  /// Unique identifier for the province.
  final int id;

  /// The English name of the province.
  final String nameEn;

  /// The Sinhala name of the province.
  final String nameSi;

  /// The Tamil name of the province.
  final String nameTa;

  /// Creates a new [Province] instance with the required properties.
  Province({
    required this.id,
    required this.nameEn,
    required this.nameSi,
    required this.nameTa,
  });

  /// Creates a new [Province] instance from a JSON map.
  ///
  /// The [json] parameter is a [Map<String, dynamic>] containing the province data.
  /// Returns a [Province] object initialized with values from the [json] map.
  factory Province.fromJson(Map<String, dynamic> json) {
    return Province(
      id: json['id'],
      nameEn: json['name_en'],
      nameSi: json['name_si'],
      nameTa: json['name_ta'],
    );
  }
}

/// A list of [Province] objects representing the provinces in your application.
///
/// This list is initialized with province data. It includes provinces
/// with their respective names in multiple languages (English, Sinhala, Tamil).
final List<Province> slProvinces = [
  Province(id: 1, nameEn: 'Western', nameSi: 'බස්නාහිර', nameTa: 'மேல்'),
  Province(id: 2, nameEn: 'Central', nameSi: 'මධ්‍යම', nameTa: 'மத்திய'),
  Province(id: 3, nameEn: 'Southern', nameSi: 'දකුණු', nameTa: 'தென்'),
  Province(id: 4, nameEn: 'North Western', nameSi: 'වයඹ', nameTa: 'வட மேல்'),
  Province(id: 5, nameEn: 'Sabaragamuwa', nameSi: 'සබරගමුව', nameTa: 'சபரகமுவ'),
  Province(id: 6, nameEn: 'Eastern', nameSi: 'නැගෙනහිර', nameTa: 'கிழக்கு'),
  Province(id: 7, nameEn: 'Uva', nameSi: 'ඌව', nameTa: 'ஊவா'),
  Province(
      id: 8, nameEn: 'North Central', nameSi: 'උතුරු මැද', nameTa: 'வட மத்திய'),
  Province(id: 9, nameEn: 'Northern', nameSi: 'උතුරු', nameTa: 'வட'),
];

/// Optional: Helper function to find a province by its unique [id].
///
/// Returns the [Province] object with the matching [id], or `null` if no province is found.
Province? getProvinceById(int id) {
  return slProvinces.firstWhere(
    (province) => province.id == id,
  );
}
