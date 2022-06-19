import 'package:flutter/material.dart';
import 'package:flutter_cine/data/models/movies.dart';
import 'package:flutter_cine/constants/constants.dart';

final section1 = List.generate(
    16,
    (index) => Seat(
        isHidden: [0, 1, 4].contains(index), isOcuppied: [].contains(index)));
final section2 = List.generate(
    16,
    (index) => Seat(
        isHidden: [4, 5, 6, 7].contains(index),
        isOcuppied: [12, 13].contains(index)));
final section3 = List.generate(
    16,
    (index) => Seat(
        isHidden: [2, 3, 7].contains(index),
        isOcuppied: [13, 14, 15].contains(index)));
final section4 = List.generate(
    20,
    (index) => Seat(
        isHidden: [].contains(index), isOcuppied: [1, 2, 3].contains(index)));
final section5 = List.generate(
    20,
    (index) =>
        Seat(isHidden: [].contains(index), isOcuppied: [].contains(index)));
final section6 = List.generate(
    20,
    (index) =>
        Seat(isHidden: [].contains(index), isOcuppied: [14].contains(index)));
        
final seats = [
  section1,
  section2,
  section3,
  section4,
  section5,
  section6,
];

const seatTypes = [
  SeatType(name: 'Available', color: Colors.grey),
  SeatType(name: 'Booked', color: Colors.black),
  SeatType(name: 'Selection', color: AppColors.primaryColor),
];
