class Province {
  final int id;
  final String nameEn;
  final String nameSi;
  final String nameTa;

  Province({
    required this.id,
    required this.nameEn,
    required this.nameSi,
    required this.nameTa,
  });

  // Example of a factory method to initialize a Province from JSON (if needed)
  factory Province.fromJson(Map<String, dynamic> json) {
    return Province(
      id: json['id'],
      nameEn: json['name_en'],
      nameSi: json['name_si'],
      nameTa: json['name_ta'],
    );
  }
}

// Creating a list of provinces based on your SQL data
final List<Province> slProvinces = [
  Province(id: 1, nameEn: 'Western', nameSi: 'බස්නාහිර', nameTa: 'மேல்'),
  Province(id: 2, nameEn: 'Central', nameSi: 'මධ්‍යම', nameTa: 'மத்திய'),
  Province(id: 3, nameEn: 'Southern', nameSi: 'දකුණු', nameTa: 'தென்'),
  Province(id: 4, nameEn: 'North Western', nameSi: 'වයඹ', nameTa: 'வட மேல்'),
  Province(id: 5, nameEn: 'Sabaragamuwa', nameSi: 'සබරගමුව', nameTa: 'சபரகமுவ'),
  Province(id: 6, nameEn: 'Eastern', nameSi: 'නැගෙනහිර', nameTa: 'கிழக்கு'),
  Province(id: 7, nameEn: 'Uva', nameSi: 'ඌව', nameTa: 'ஊவா'),
  Province(id: 8, nameEn: 'North Central', nameSi: 'උතුරු මැද', nameTa: 'வட மத்திய'),
  Province(id: 9, nameEn: 'Northern', nameSi: 'උතුරු', nameTa: 'வட'),
];

// Optional: Helper function to find a province by ID
Province? getProvinceById(int id) {
  return slProvinces.firstWhere((province) => province.id == id, );
}
