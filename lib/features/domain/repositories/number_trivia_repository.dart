/*
 * *
 *  * Created by Ahmed Almahdie @ iZAM Inc. on 8/10/2022.
 *  * ahmed.elmahdy@izam.co
 *  * Copyright (c) 2022. All rights reserved.
 *
 */
import 'package:dartz/dartz.dart';
import 'package:number_trivia/core/error/failure.dart';
import 'package:number_trivia/features/domain/entities/number_trivia.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure?, NumberTrivia?>?>? getConcreteNumberTrivia(int number);
  Future<Either<Failure?, NumberTrivia?>?>? getRandomNumberTrivia();
}
