//import 'dart:ffi';
//import 'dart:ui' as ui;

import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_cine/data/data.dart';

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
  void initState() {
    _movieCardPageController = PageController(viewportFraction: 0.77)
      ..addListener(_movieCardPageListener);
    _movieDetailPageController = PageController()
      ..addListener(_movieDetailsPercentListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final h = constraints.maxHeight;
        final w = constraints.maxWidth;

        return Column(
          children: [
            const Spacer(),
            //Movie cards
            SizedBox(
                height: h * 0.6,
                child: PageView.builder(
                    controller: _movieCardPageController,
                    clipBehavior: Clip.none,
                    itemCount: movies.length,
                    itemBuilder: (_, index) {
                      final movie = movies[index];
                      final progress = (index - _movieCardPage);
                      final scale = lerpDouble(1, .8, progress.abs())!;
                      final isScrolling = _movieCardPageController
                          .position.isScrollingNotifier.value;
                      final isCurrenntPage = index == _movieCardIndex;
                      final isFirstPage = index == 0;

                      return Center(
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(movie.image),
                                fit: BoxFit.cover,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(70)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(.2),
                                    blurRadius: 25,
                                    offset: const Offset(0, 25))
                              ]),
                        ),
                      );
                    })),
            const Spacer(),
            //Movie Details
            SizedBox(
              height: h * 0.25,
            )
          ],
        );
      },
    );
  }

  _movieDetailsPercentListener() {
    setState(() {
      _movieCardPage = _movieCardPageController.page!;
      _movieCardIndex = _movieCardPageController.page!.round();
    });
  }

  _movieCardPageListener() {
    setState(() {
      _movieDetailsPage = _movieDetailPageController.page!;
    });
  }
}
