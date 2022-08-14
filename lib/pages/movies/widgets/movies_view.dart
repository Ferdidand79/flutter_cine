import 'dart:ffi';

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
  late final PageController _movieDetailPageController;

  double _movieCardPage = 0.0;
  double _movieDetailsPage = 0.0;
  int _movieCardIndex = 0;
  final _showMovieDetails = ValueNotifier(true);

  @override
  Void initState() {
    _movieCardPageController = PageController(viewportFraction: 0.77)
      ..addListener(_movieCardPageListener);
    _movieDetailPageController = PageController()
      ..addListener(_movieDetailsPercentListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  _movieDetailsPercentListener() {
    setState(() {
      _movieCardPage = _movieCardPageController.page!;
      ;
      _movieCardIndex = _movieCardPageController.page!.round();
    });
  }

  _movieCardPageListener() {
    setState(() {
      _movieDetailsPage = _movieDetailPageController.page!;
    });
  }
}
