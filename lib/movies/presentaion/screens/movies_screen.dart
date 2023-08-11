// ignore_for_file: prefer_const_constructors
import 'package:filmy/core/services/services_locator.dart';
import 'package:filmy/movies/presentaion/controller/movies_bloc.dart';
import 'package:filmy/movies/presentaion/controller/movies_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/now_playing_widget.dart';
import '../widgets/popular_widget.dart';
import '../widgets/see_more_widget.dart';
import '../widgets/top_rated.dart';


class MoviesScreen extends StatelessWidget {
  const MoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<MoviesBloc>()
        ..add(GetNowPlayingMoviesEvent())
        ..add(GetPopularMoviesEvent())
        ..add(GetTopRatedMoviesEvent()),
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SingleChildScrollView(
          key: const Key('movieScrollView'),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              NowPlayingWidget(),
              SeeMoreWidget(
                title: "popular",
              ),
              PopularWidget(),
              SeeMoreWidget(
                title: "Top Rated",
              ),
              TopRatedWidget(),
              SizedBox(height: 50.0),
            ],
          ),
        ),
      ),
    );
  }
}
