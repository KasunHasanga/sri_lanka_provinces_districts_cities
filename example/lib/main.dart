import 'package:flutter/material.dart';
import 'package:sri_lanka_provinces_districts_cities/sri_lanka_provinces_districts_cities.dart';


void main() {
  runApp(const CitiesApp());
}

class CitiesApp extends StatelessWidget {
  const CitiesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Cities Helper Demo',
      home: CitiesHomePage(),
    );
  }
}

class CitiesHomePage extends StatefulWidget {
  const CitiesHomePage({super.key});

  @override
  _CitiesHomePageState createState() => _CitiesHomePageState();
}

class _CitiesHomePageState extends State<CitiesHomePage> {
  late List<Cities> localCities;
  late List<District> localDistricts;
  late List<Province> localProvinces;

  String result = '';

  @override
  void initState() {
    super.initState();
    // Load all provinces, districts, and cities
    localProvinces = slProvinces; // Assume `provincesList` contains all provinces
    localDistricts = slDistricts; // Assume `districtsList` contains all districts
    localCities = slCities;       // Assume `citiesList` contains all cities
  }

  void _searchProvince(int id) {
    Province? province = getProvinceById(id);
    setState(() {
      result = province != null
          ? 'Province: ${province.nameEn}'
          : 'Province not found for ID $id';
    });
  }

  void _searchDistricts(int provinceId) {
    List<District> foundDistricts = getDistrictsByProvinceId(provinceId);
    setState(() {
      result = foundDistricts.isNotEmpty
          ? 'Districts: ${foundDistricts.map((d) => d.nameEn).join(', ')}'
          : 'No districts found for Province ID $provinceId';
    });
  }

  void _searchCities(int districtId) {
    List<Cities> foundCities = getCitiesByDistrictId(districtId);
    setState(() {
      result = foundCities.isNotEmpty
          ? 'Cities: ${foundCities.map((c) => c.nameEn).join(', ')}'
          : 'No cities found for District ID $districtId';
    });
  }

  void _searchCityByName(String name) {
    List<Cities> foundCities = searchCitiesByNameEn(name);
    setState(() {
      result = foundCities.isNotEmpty
          ? 'Search results: ${foundCities.map((c) => c.nameEn).join(', ')}'
          : 'No cities found with name "$name"';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cities Helper Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => _searchProvince(3),
              child: const Text('Find Province by ID (e.g., 3)'),
            ),
            ElevatedButton(
              onPressed: () => _searchDistricts(1),
              child: const Text('Find Districts by Province ID (e.g., 1)'),
            ),
            ElevatedButton(
              onPressed: () => _searchCities(2),
              child: const Text('Find Cities by District ID (e.g., 1)'),
            ),
            ElevatedButton(
              onPressed: () => _searchCityByName('Ampara'),
              child: const Text('Search Cities by English Name (e.g., Ampara)'),
            ),
            const SizedBox(height: 20),
            Text(
              result,
              style: const TextStyle(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
