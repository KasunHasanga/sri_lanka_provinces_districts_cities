import 'package:flutter_test/flutter_test.dart';
import 'package:sri_lanka_provinces_districts_cities/models/cities.dart';
import 'package:sri_lanka_provinces_districts_cities/models/districs.dart';
import 'package:sri_lanka_provinces_districts_cities/models/province.dart';

import 'package:sri_lanka_provinces_districts_cities/sri_lanka_provinces_districts_cities.dart';

void main() {
  test('adds one to input values', () {


    // final District
    Province? province = getProvinceById(3); // Gets 'Southern' province
    print(province?.nameEn); // Output: Southern
  });

  // Finding districts by province ID:
  List<District> colomboDistricts =
      getDistrictsByProvinceId(1); // Gets districts in Western Province
  for (var district in colomboDistricts) {
    print(district.nameEn); // Output: Colombo, Gampaha, Kalutara
  }

  // City? foundCity = getCityById( 1);
  // print(foundCity?.toJson());
  group('Cities Helper Tests', () {
    test('Get city by ID', () {
      Cities? city = getCityById(1);
      expect(city?.nameEn, 'Akkaraipattu');
    });

    test('Get cities by district ID', () {
      List<Cities> citiesInDistrict = getCitiesByDistrictId(1);
      expect(citiesInDistrict.isNotEmpty, true);
      expect(citiesInDistrict.first.nameEn, 'Akkaraipattu');
    });

    test('Get cities by postcode', () {
      List<Cities> citiesByPostcode = getCitiesByPostcode('32400');
      expect(citiesByPostcode.length, 1);
      expect(citiesByPostcode.first.nameEn, 'Akkaraipattu');
    });

    test('Search cities by English name', () {
      List<Cities> searchedCities = searchCitiesByNameEn('Ampara');
      expect(searchedCities.length, greaterThan(0));
      expect(searchedCities.first.nameEn, 'Ampara');
    });

    test('Search cities by Sinhala name', () {
      List<Cities> searchedCities = searchCitiesByNameSi('අම්පාර');
      expect(searchedCities.length, greaterThan(0));
      expect(searchedCities.first.nameSi, 'අම්පාර');
    });

    test('Search cities by Tamil name', () {
      List<Cities> searchedCities = searchCitiesByNameTa('அம்பாறை');
      expect(searchedCities.length, greaterThan(0));
      expect(searchedCities.first.nameTa, 'அம்பாறை');
    });
  });
}
