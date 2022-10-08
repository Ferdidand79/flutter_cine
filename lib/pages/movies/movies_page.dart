import 'package:flutter/material.dart';
//import 'package:flutter_cine/pages/movies/widgets/dot_tab_indicator.dart';
import 'widgets/widgets.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({Key? key}) : super(key: key);

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            indicator: const DotIndicator(),
            tabs: const [
              Tab(text: 'Movie'),
              Tab(text: 'Series'),
              Tab(text: 'Tv Show 04'),
            ],
          ),
        ),
        body: TabBarView(controller: _tabController, children: const [
          MoviesView(),
          SizedBox.expand(),
          SizedBox.expand(),
        ]));
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
