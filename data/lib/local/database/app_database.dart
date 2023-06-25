// ignore: depend_on_referenced_packages
import 'package:sqflite/sqflite.dart' as sqflite;
import 'dart:async';
import 'package:floor/floor.dart';

import 'dao/movie_dao.dart';
import 'dao/series_dao.dart';
import 'dao/user_dao.dart';
import 'entity/movies_dtos/now_playing_movie_dto.dart';
import 'entity/movies_dtos/popular_movie_dto.dart';
import 'entity/movies_dtos/top_rated_movies_dto.dart';
import 'entity/movies_dtos/upcoming_movies_dto.dart';
import 'entity/series_dtos/airing_today_series_dto.dart';
import 'entity/series_dtos/on_the_air_series_dto.dart';
import 'entity/series_dtos/popular_series_dto.dart';
import 'entity/series_dtos/top_rated_series_dto.dart';
import 'entity/user_dto.dart';
part 'app_database.g.dart';

@Database(
  version: 1,
  entities: [
    AiringTodaySeriesDto,
    NowPlayingMovieDto,
    OnTheAirSeriesDto,
    UpcomingMovieDto,
    PopularMovieDto,
    PopularSeriesDto,
    TopRatedMovieDto,
    TopRatedSeriesDto,
    UserDto
  ],
)
abstract class AppDatabase extends FloorDatabase {
  MovieDao get movieDao;
  SeriesDao get seriesDao;
  UserDao get userDao;
}
