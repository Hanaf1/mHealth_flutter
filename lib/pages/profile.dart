import 'package:app_1/models/profile_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    super.key,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List<ProfileModel> profileData = ProfileModel.getProfile();

  int calculateAge(int birthYear) {
    DateTime today = DateTime.now();
    int age = today.year - birthYear;
    return age;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: profileData.length,
              itemBuilder: (context, index) {
                return header(index); // Pass index to header function
              },
            ),
          ),
        ],
      ),
    );
  }

  Container header(int index) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Profile',
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 90,
                height: 90, // Added height to ensure proper sizing
                decoration: BoxDecoration(
                    color: Colors.amber.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                        image: AssetImage(profileData[index].image),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    profileData[index].name,
                    style: const TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  Text(
                    "Gender : ${profileData[index].gender}",
                    style: const TextStyle(
                        fontSize: 18, color: Color(0xfff09121c)),
                  ),
                  Text(
                    'Age : ${calculateAge(profileData[index].birth)}',
                    style: const TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Alamat',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            profileData[index].gender,
            style: TextStyle(
                color: const Color(0xfff09121c).withOpacity(0.8),
                fontWeight: FontWeight.w300,
                fontSize: 12),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Alergi',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            (profileData[index].allergy).join(','),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Drug Allergy',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            (profileData[index].drugAllergy).join(','),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Medical History',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            (profileData[index].medicalHistory).join(','),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Blood Type',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            (profileData[index].bloodType),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Add your sign-out logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.red, // Set the background color to red
                ),
                child: const Text(
                  'Sign Out',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
