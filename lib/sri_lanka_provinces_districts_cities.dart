library sri_lanka_provinces_districts_cities;

import 'models/province.dart';
// https://github.com/madurapa/sri-lanka-provinces-districts-cities/blob/main/cities.sql
/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}

// Accessing a province by ID:
// Province? province = getProvinceById(3); // Gets 'Southern' province
// print(province?.nameEn); // Output: Southern


// Accessing a district by ID:
// District? district = getDistrictById(3); // Gets 'Badulla' district
// print(district?.nameEn); // Output: Badulla

// Finding districts by province ID:
// List<District> colomboDistricts = getDistrictsByProvinceId(1); // Gets districts in Western Province
// for (var district in colomboDistricts) {
// print(district.nameEn); // Output: Colombo, Gampaha, Kalutara
// }