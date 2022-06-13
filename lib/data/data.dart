import 'package:flutter_cine/data/models/models.dart';

final secction1 = List.generate(
    16,
    (index) => Seat(
        isHidden: [0, 1, 4].contains(index), isOcuppied: [].contains(index)));
final secction2 = List.generate(
    16,
    (index) => Seat(
        isHidden: [4, 5, 6, 7].contains(index),
        isOcuppied: [12, 13].contains(index)));
final secction3 = List.generate(
    16,
    (index) => Seat(
        isHidden: [2, 3, 7].contains(index),
        isOcuppied: [13, 14, 15].contains(index)));
final secction4 = List.generate(
    20,
    (index) => Seat(
        isHidden: [].contains(index), isOcuppied: [1, 2, 3].contains(index)));
final secction5 = List.generate(
    20,
    (index) =>
        Seat(isHidden: [].contains(index), isOcuppied: [].contains(index)));
final secction06 = List.generate(
    20,
    (index) =>
        Seat(isHidden: [].contains(index), isOcuppied: [14].contains(index)));
