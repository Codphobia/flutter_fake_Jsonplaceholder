class User {
  late final int id;
  late final String name;
  late final String username;
  late final String email;
  late final Address address;
  late final String phone;
  late final String website;
  late final Company company;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company,
  });

  static User fromMap(Map<String, dynamic> map) {
    return User(
        id: map['id'],
        name: map['name'],
        username: map['username'],
        email: map['email'],
        address: Address.fromMap(map['address']),
        phone: map['phone'],
        website: map['website'],
        company: Company.fromMap(map['company']));
  }
}

class Address {
  Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  late final String street;
  late final String suite;
  late final String city;
  late final String zipcode;
  late final Geo geo;

  static Address fromMap(Map<String, dynamic> map) {
    return Address(
      street: map['street'],
      suite: map['suite'],
      city: map['city'],
      zipcode: map['zipcode'],
      geo: Geo.fromMap(map['geo']),
    );
  }
}

class Geo {
  late final String lat;
  late final String lng;

  Geo({
    required this.lat,
    required this.lng,
  });

  static Geo fromMap(Map<String, dynamic> map) {
    return Geo(
      lat: map['lat'],
      lng: map['lng'],
    );
  }
}

class Company {
  late final String name;
  late final String catchPhrase;
  late final String bs;

  Company({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  static Company fromMap(Map<String, dynamic> map) {
    return Company(
      name: map['name'],
      catchPhrase: map['catchPhrase'],
      bs: map['bs'],
    );
  }
}
