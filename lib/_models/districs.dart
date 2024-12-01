class District {
  final int id;
  final int provinceId;
  final String nameEn;
  final String nameSi;
  final String nameTa;

  District({
    required this.id,
    required this.provinceId,
    required this.nameEn,
    required this.nameSi,
    required this.nameTa,
  });

  // Example of a factory method to initialize a District from JSON (if needed)
  factory District.fromJson(Map<String, dynamic> json) {
    return District(
      id: json['id'],
      provinceId: json['province_id'],
      nameEn: json['name_en'],
      nameSi: json['name_si'],
      nameTa: json['name_ta'],
    );
  }
}

// Creating a list of districts based on your SQL data
final List<District> slDistricts = [
  District(
      id: 1,
      provinceId: 6,
      nameEn: 'Ampara',
      nameSi: 'අම්පාර',
      nameTa: 'அம்பாறை'),
  District(
      id: 2,
      provinceId: 8,
      nameEn: 'Anuradhapura',
      nameSi: 'අනුරාධපුරය',
      nameTa: 'அனுராதபுரம்'),
  District(
      id: 3,
      provinceId: 7,
      nameEn: 'Badulla',
      nameSi: 'බදුල්ල',
      nameTa: 'பதுளை'),
  District(
      id: 4,
      provinceId: 6,
      nameEn: 'Batticaloa',
      nameSi: 'මඩකලපුව',
      nameTa: 'மட்டக்களப்பு'),
  District(
      id: 5,
      provinceId: 1,
      nameEn: 'Colombo',
      nameSi: 'කොළඹ',
      nameTa: 'கொழும்பு'),
  District(
      id: 6, provinceId: 3, nameEn: 'Galle', nameSi: 'ගාල්ල', nameTa: 'காலி'),
  District(
      id: 7,
      provinceId: 1,
      nameEn: 'Gampaha',
      nameSi: 'ගම්පහ',
      nameTa: 'கம்பஹா'),
  District(
      id: 8,
      provinceId: 3,
      nameEn: 'Hambantota',
      nameSi: 'හම්බන්තොට',
      nameTa: 'அம்பாந்தோட்டை'),
  District(
      id: 9,
      provinceId: 9,
      nameEn: 'Jaffna',
      nameSi: 'යාපනය',
      nameTa: 'யாழ்ப்பாணம்'),
  District(
      id: 10,
      provinceId: 1,
      nameEn: 'Kalutara',
      nameSi: 'කළුතර',
      nameTa: 'களுத்துறை'),
  District(
      id: 11,
      provinceId: 2,
      nameEn: 'Kandy',
      nameSi: 'මහනුවර',
      nameTa: 'கண்டி'),
  District(
      id: 12,
      provinceId: 5,
      nameEn: 'Kegalle',
      nameSi: 'කෑගල්ල',
      nameTa: 'கேகாலை'),
  District(
      id: 13,
      provinceId: 9,
      nameEn: 'Kilinochchi',
      nameSi: 'කිලිනොච්චිය',
      nameTa: 'கிளிநொச்சி'),
  District(
      id: 14,
      provinceId: 4,
      nameEn: 'Kurunegala',
      nameSi: 'කුරුණෑගල',
      nameTa: 'குருணாகல்'),
  District(
      id: 15,
      provinceId: 9,
      nameEn: 'Mannar',
      nameSi: 'මන්නාරම',
      nameTa: 'மன்னார்'),
  District(
      id: 16,
      provinceId: 2,
      nameEn: 'Matale',
      nameSi: 'මාතලේ',
      nameTa: 'மாத்தளை'),
  District(
      id: 17,
      provinceId: 3,
      nameEn: 'Matara',
      nameSi: 'මාතර',
      nameTa: 'மாத்தறை'),
  District(
      id: 18,
      provinceId: 7,
      nameEn: 'Monaragala',
      nameSi: 'මොණරාගල',
      nameTa: 'மொணராகலை'),
  District(
      id: 19,
      provinceId: 9,
      nameEn: 'Mullaitivu',
      nameSi: 'මුලතිව්',
      nameTa: 'முல்லைத்தீவு'),
  District(
      id: 20,
      provinceId: 2,
      nameEn: 'Nuwara Eliya',
      nameSi: 'නුවර එළිය',
      nameTa: 'நுவரேலியா'),
  District(
      id: 21,
      provinceId: 8,
      nameEn: 'Polonnaruwa',
      nameSi: 'පොළොන්නරුව',
      nameTa: 'பொலன்னறுவை'),
  District(
      id: 22,
      provinceId: 4,
      nameEn: 'Puttalam',
      nameSi: 'පුත්තලම',
      nameTa: 'புத்தளம்'),
  District(
      id: 23,
      provinceId: 5,
      nameEn: 'Ratnapura',
      nameSi: 'රත්නපුර',
      nameTa: 'இரத்தினபுரி'),
  District(
      id: 24,
      provinceId: 6,
      nameEn: 'Trincomalee',
      nameSi: 'ත්‍රිකුණාමලය',
      nameTa: 'திருகோணமலை'),
  District(
      id: 25,
      provinceId: 9,
      nameEn: 'Vavuniya',
      nameSi: 'වව්නියාව',
      nameTa: 'வவுனியா'),
];

// Optional: Helper function to find a district by ID
District? getDistrictById(int id) {
  return slDistricts.firstWhere(
    (district) => district.id == id,
  );
}

// Optional: Helper function to find districts by province ID
List<District> getDistrictsByProvinceId(int provinceId) {
  return slDistricts
      .where((district) => district.provinceId == provinceId)
      .toList();
}
