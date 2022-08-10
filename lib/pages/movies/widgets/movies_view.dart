import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MoviesView extends StatefulWidget {
  const MoviesView({Key? key}) : super(key: key);

  @override
  State<MoviesView> createState() => _MoviesViewState();
}

class _MoviesViewState extends State<MoviesView> {
  late final PageController _movieCardPageController;
  late final PageController _movieDetailspageController;

  double _movieCardPage = 0.0;
  double _movieDetailPage = 0.0;
  int _movieCardIndex = 0;
  final _showMovieDetails = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
