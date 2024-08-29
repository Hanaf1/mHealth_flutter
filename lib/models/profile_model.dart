class ProfileModel {
  String image;
  String name;
  int birth;
  String gender;
  String address;
  List<String> allergy;
  List<String> drugAllergy;
  List<String> medicalHistory;
  String bloodType;

  ProfileModel({
    required this.image,
    required this.name,
    required this.birth,
    required this.gender,
    required this.address,
    required this.allergy,
    required this.drugAllergy,
    required this.medicalHistory,
    required this.bloodType,
  });

  static List<ProfileModel> getProfile() {
    List<ProfileModel> profile = [];
    profile.add(ProfileModel(
        image: 'assets/images/profile.png',
        name: 'zero',
        birth: 2004,
        gender: 'laki-laki',
        address: 'central java, kudus, indonesia',
        allergy: ['egg', 'seafood'],
        drugAllergy: [],
        medicalHistory: [],
        bloodType: 'AB'));
    return profile;
  }
}
