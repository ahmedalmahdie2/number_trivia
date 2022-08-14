/*
 * *
 *  * Created by Ahmed Almahdie @ iZAM Inc. on 8/10/2022.
 *  * ahmed.elmahdy@izam.co
 *  * Copyright (c) 2022. All rights reserved.
 *
 */
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:number_trivia/core/error/failure.dart';
import 'package:number_trivia/core/usecases/usecase.dart';
import 'package:number_trivia/features/domain/entities/number_trivia.dart';

import '../repositories/number_trivia_repository.dart';

class GetConcreteNumberTrivia extends UseCase<NumberTrivia, Params> {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia({required this.repository});

  // Future<Either<Failure, NumberTrivia>> execute({required int number}) async {
  //   return await repository.getConcreteNumberTrivia(number);
  // }

  @override
  Future<Either<Failure?, NumberTrivia?>?>? call(params) async {
    return await repository.getConcreteNumberTrivia(params.number);
  }
}

class Params extends Equatable {
  final int number;

  const Params({required this.number});
  @override
  List<Object?> get props => [
        number,
      ];
}
