

# Sri Lanka Provinces, Districts, and Cities

A Flutter package to access information about Sri Lanka's provinces, districts, and cities. This package provides models and helper functions to work with Sri Lankan geographic data, including the ability to search, filter, and retrieve details about provinces, districts, and cities by different criteria (ID, name, postcode).

## Features

- Retrieve information about **provinces**, **districts**, and **cities** in Sri Lanka.
- Models for **City**, **District**, and **Province**.
- Helper functions to find items by ID, name (in English, Sinhala, or Tamil), and postcode.
- Easy-to-use helper functions to get related data (e.g., all districts in a province, all cities in a district).

## Installation

Add the following to your `pubspec.yaml` file:

    dependencies:
      sri_lanka_provinces_districts_cities: ^x.x.x

Then run:

    flutter pub get

Import the package

    import 'package:sri_lanka_provinces_districts_cities/sri_lanka_provinces_districts_cities.dart';

**Models**
The package includes the following models:

 - Province
 - District
 -  City


Each model has the necessary properties and fromJson / toJson methods for JSON serialization.

Example Usage
**1. Get Province by ID**
You can get a province by its ID like this:

    Province? province = getProvinceById(3); // Gets 'Southern' province
    print(province?.nameEn); // Output: Southern

**2. Get Districts by Province ID**
Retrieve all districts within a given province:

    List<District> colomboDistricts = getDistrictsByProvinceId(1); // Gets districts in Western Province
    for (var district in colomboDistricts) {
      print(district.nameEn); // Output: Colombo, Gampaha, Kalutara
    }

**3. Get City by ID**
Find a specific city by its ID:

    City? city = getCityById(1);
    print(city?.nameEn); // Output: Akkaraipattu

**4. Get Cities by District ID**
Retrieve all cities within a specific district:

    List<City> citiesInDistrict = getCitiesByDistrictId(1); // Gets cities in district with ID 1
    for (var city in citiesInDistrict) {
      print(city.nameEn); // Output: Akkaraipattu, Ampara, etc.
    }

**5. Search Cities by Name (English, Sinhala, or Tamil)**
Search for cities by their names in different languages:

    List<City> searchedCities = searchCitiesByNameEn('Ampara');
    print(searchedCities.first.nameEn); // Output: Ampara
    
    List<City> searchedCitiesSi = searchCitiesByNameSi('අම්පාර');
    print(searchedCitiesSi.first.nameSi); // Output: අම්පාර
    
    List<City> searchedCitiesTa = searchCitiesByNameTa('அம்பாறை');
    print(searchedCitiesTa.first.nameTa); // Output: அம்பாறை

**Helper Functions**
The following helper functions are available:

**1. Get Province by ID**

    Province? getProvinceById(int id)

Returns a Province object by its ID.

**2. Get Districts by Province ID**

    List<District> getDistrictsByProvinceId(int provinceId)

Returns a list of districts in a province.

**3. Get City by ID**

    City? getCityById(int id)

Returns a City object by its ID.

**4. Get Cities by District ID**

    List<City> getCitiesByDistrictId(int districtId)

Returns a list of cities in a district.

**5. Get Cities by Postcode**

    List<City> getCitiesByPostcode(String postcode)

Returns a list of cities matching a specific postcode.

6**. Search Cities by English Name**

    List<City> searchCitiesByNameEn(String name)

Search for cities by their English name.

**7. Search Cities by Sinhala Name**

    List<City> searchCitiesByNameSi(String name)

Search for cities by their Sinhala name.

**8. Search Cities by Tamil Name**

    List<City> searchCitiesByNameTa(String name)

Search for cities by their Tamil name.

Example of Helper Functions in Action

    void main() {
      // Get Province by ID
      Province? province = getProvinceById(3); // Southern Province
      print(province?.nameEn); // Output: Southern
    
      // Get Districts by Province ID
      List<District> districts = getDistrictsByProvinceId(1); // Western Province
      for (var district in districts) {
        print(district.nameEn); // Output: Colombo, Gampaha, Kalutara
      }
    
      // Get City by ID
      City? city = getCityById(1);
      print(city?.nameEn); // Output: Akkaraipattu
    
      // Search Cities by Name (English)
      List<City> citiesByName = searchCitiesByNameEn('Ampara');
      print(citiesByName.first.nameEn); // Output: Ampara
    }

**Contributing**
Contributions are welcome! Please feel free to fork this repository, create a branch, and submit a pull request. If you find any bugs or have feature requests, please open an issue.

**License**
This package is open-source and available under the MIT License. See the [LICENSE](https://github.com/KasunHasanga/sri_lanka_provinces_districts_cities/blob/master/LICENSE) file for more details.
