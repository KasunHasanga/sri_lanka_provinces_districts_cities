import 'package:flutter_test/flutter_test.dart';
import 'package:sri_lanka_provinces_districts_cities/sri_lanka_provinces_districts_cities.dart';

void main() {
  group('Province Helper Tests', () {
    test('Get province by ID', () {
      Province? province = getProvinceById(3); // Southern Province
      expect(province, isNotNull);
      expect(province?.nameEn, 'Southern');
      expect(province?.nameSi, 'දකුණු');
      expect(province?.nameTa, 'தென்');
    });
  });

  group('District Helper Tests', () {
    test('Get districts by province ID', () {
      List<District> districts = getDistrictsByProvinceId(1); // Western Province
      expect(districts.isNotEmpty, true);
      expect(districts.length, greaterThan(0));
      expect(districts.map((d) => d.nameEn), containsAll(['Colombo', 'Gampaha', 'Kalutara']));
    });

    test('Get district by ID', () {
      District? district = getDistrictById(1); // Colombo District
      expect(district, isNotNull);
      expect(district?.nameEn, 'Ampara');
    });
  });

  group('City Helper Tests', () {
    test('Get city by ID', () {
      Cities? city = getCityById(1); // Akkaraipattu
      expect(city, isNotNull);
      expect(city?.nameEn, 'Akkaraipattu');
      expect(city?.nameSi, 'අක්කරෙයිපත්තුව');
      expect(city?.nameTa, 'அக்கரைப்பற்று');
    });

    test('Get cities by district ID', () {
      List<Cities> citiesInDistrict = getCitiesByDistrictId(1); // District with ID 1
      expect(citiesInDistrict.isNotEmpty, true);
      expect(citiesInDistrict.first.nameEn, 'Akkaraipattu');
    });

    test('Get cities by postcode', () {
      List<Cities> citiesByPostcode = getCitiesByPostcode('32400'); // Postcode for Akkaraipattu
      expect(citiesByPostcode.isNotEmpty, true);
      expect(citiesByPostcode.first.nameEn, 'Akkaraipattu');
    });

    test('Search cities by English name', () {
      List<Cities> searchedCities = searchCitiesByNameEn('Ampara'); // Search for Ampara
      expect(searchedCities.isNotEmpty, true);
      expect(searchedCities.first.nameEn, 'Ampara');
    });

    test('Search cities by Sinhala name', () {
      List<Cities> searchedCities = searchCitiesByNameSi('අම්පාර'); // Search in Sinhala
      expect(searchedCities.isNotEmpty, true);
      expect(searchedCities.first.nameSi, 'අම්පාර');
    });

    test('Search cities by Tamil name', () {
      List<Cities> searchedCities = searchCitiesByNameTa('அம்பாறை'); // Search in Tamil
      expect(searchedCities.isNotEmpty, true);
      expect(searchedCities.first.nameTa, 'அம்பாறை');
    });
  });

  // Debugging Logs for Helper Outputs
  group('Debugging Helper Outputs', () {
    test('Print province name by ID', () {
      Province? province = getProvinceById(3);
      print(province?.nameEn); // Expected: Southern
    });

    test('Print districts by province ID', () {
      List<District> colomboDistricts = getDistrictsByProvinceId(1);
      for (var district in colomboDistricts) {
        print(district.nameEn); // Expected: Colombo, Gampaha, Kalutara
      }
    });

    test('Print city details by ID', () {
      Cities? city = getCityById(1);
      print(city?.toJson()); // Expected: JSON representation of Akkaraipattu
    });
  });
}
