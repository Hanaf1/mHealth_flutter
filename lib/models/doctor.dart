import 'package:flutter/material.dart';

class DoctorModel {
  String name;
  String image;
  Color imageBox;
  List<String> specialties;
  List<CalendarModel> calendar;
  String bio;
  double score;

  DoctorModel({
    required this.name,
    required this.image,
    required this.imageBox,
    required this.specialties,
    required this.score,
    required this.bio,
    required this.calendar,
  });

  static List<DoctorModel> getDoctors() {
    {
      List<DoctorModel> doctors = [];
      doctors.add(DoctorModel(
          name: 'Dr. Jenny Wilson',
          image: 'assets/images/Doctor2.png',
          imageBox: const Color(0xffFFA340).withOpacity(0.75),
          specialties: [
            'Dental Surgeon',
            'Aesthetic Surgeon',
            'General Dentist'
          ],
          score: 4.8,
          bio:
              'Dr. Jenny Wilson(Implantologist), is a Dentist in America she has 20 years of experience',
          calendar: [
            CalendarModel(dayNumber: 14, dayName: 'Sun', isSelected: false),
            CalendarModel(dayNumber: 15, dayName: 'Mon', isSelected: false),
            CalendarModel(dayNumber: 16, dayName: 'Tue', isSelected: true),
            CalendarModel(dayNumber: 17, dayName: 'Wed', isSelected: false),
          ]));
      doctors.add(DoctorModel(
          name: 'Dr. Kristin Watson',
          image: 'assets/images/Doctor1.png',
          imageBox: const Color(0xff3CFFC4).withOpacity(0.75),
          specialties: [
            'Dental Surgeon',
            'Aesthetic Surgeon',
            'General Dentist'
          ],
          bio:
              'Dr. Kristin Watson(Implantologist), is a Dentist in America she has 20 years of experience',
          score: 4.8,
          calendar: [
            CalendarModel(dayNumber: 14, dayName: 'Sun', isSelected: false),
            CalendarModel(dayNumber: 15, dayName: 'Mon', isSelected: false),
            CalendarModel(dayNumber: 16, dayName: 'Tue', isSelected: true),
            CalendarModel(dayNumber: 17, dayName: 'Wed', isSelected: false),
          ]));
      return doctors;
    }
  }
}

class CalendarModel {
  final int dayNumber;
  final String dayName;
  bool isSelected;

  CalendarModel(
      {required this.dayNumber,
      required this.dayName,
      required this.isSelected});
}
