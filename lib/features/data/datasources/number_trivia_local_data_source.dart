/*
 * *
 *  * Created by Ahmed Almahdie @ iZAM Inc. on 8/14/2022.
 *  * ahmed.elmahdy@izam.co
 *  * Copyright (c) 2022. All rights reserved.
 *
 */
import '../models/number_trivia_model.dart';

abstract class NumberTriviaLocalDataSource {
  /// Gets the caches [NumberTriviaModel] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws a [NoLocalDataException] for all error codes.
  Future<NumberTriviaModel> getLastNumberTrivia(int number);

  Future<void> cacheNumberTrivia(NumberTriviaModel triviaToCache);
}
