enum Skill { Flutter, Dart, Other }

class Address {
  final String _street;
  final String _city;
  final String _zipCode;

  Address({required final street, required final city, required final zipcode})
    : _street = street,
      _zipCode = zipcode,
      _city = city;

  String get street => _street;
  String get city => _city;
  String get zipCode => _zipCode;
}

class Employee {
  final String _name;
  final int _yearOfExperience;
  final List<Skill> _skills;
  double _salary;
  final Address _address;

  Employee({
    required String name,
    required int yearOfExperience,
    required List<Skill> skills,
    required double salary,
    required Address address,
  }) : _name = name,
       _yearOfExperience = yearOfExperience,
       _skills = skills,
       _salary = salary,
       _address = address;

  // Named Constructor

  Employee.mobileDeveloper({
    required String name,
    required int yearOfExperience,
    required double salary,
    required Address address,
    List<Skill> skill = const [Skill.Flutter, Skill.Dart],
  }) : _name = name,
       _yearOfExperience = yearOfExperience,
       _salary = salary,
       _address = address,
       _skills = skill;

  int get experience => _yearOfExperience;

  String get name => _name;
  List get skill => _skills;
  Address get address => _address;

  double get salary {
    if (_skills == Skill.Flutter) {
      _salary += 1500;
    }
    if (_skills == Skill.Dart) {
      _salary += 1200;
    }
    if (_skills == Skill.Other) {
      _salary += 800;
    }
    return _salary * (_yearOfExperience / 2);
  }

  void printDetails() {
    print("Salary Specification : ");
    print("\t Base Salary : ${salary}\$");
    print("\t Experience : ${_yearOfExperience}y");
    print("\t Skill : ${_skills}");
    print(
      "\t Address : ${address._city}, ${address.street}, ${address._zipCode} ",
    );
  }
}

void main() {
  //  Employee e1 = Employee(name: "Seth", yearOfExperience: 3, skills: [Skill.Flutter],
  //                salary: 5000, address: Address(city: "Phnom Penh", street: "67", zipcode: "007"));
  //  print(e1.name);
  //  print(e1.address.city);
  //  print(e1.salary);
  //  e1.printDetails();

  Employee e2 = Employee.mobileDeveloper(
    name: "Yanit",
    yearOfExperience: 5,
    salary: 8000,
    address: Address(street: "110", city: "Phnom Penh", zipcode: "168"),
  );
  e2.printDetails();
}
