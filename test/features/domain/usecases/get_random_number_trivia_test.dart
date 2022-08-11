/*
 * *
 *  * Created by Ahmed Almahdie @ iZAM Inc. on 8/11/2022.
 *  * ahmed.elmahdy@izam.co
 *  * Copyright (c) 2022. All rights reserved.
 *
 */

import 'package:dartz/dartz.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:number_trivia/core/usecases/usecase.dart';
import 'package:number_trivia/features/domain/entities/number_trivia.dart';
import 'package:number_trivia/features/domain/repositories/number_trivia_repository.dart';
import 'package:number_trivia/features/domain/usecases/get_random_number_trivia.dart';
import 'get_concrete_number_trivia_test.mocks.dart';
import 'package:flutter_test/flutter_test.dart';

@GenerateMocks([NumberTriviaRepository])
void main() {
  GetRandomNumberTrivia? usecase;
  MockNumberTriviaRepository? mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetRandomNumberTrivia(repository: mockNumberTriviaRepository!);
  });

  const tNumberTrivia = NumberTrivia(number: 1, text: 'test');

  test('should get trivia from the repository', () async {
    // arrange
    when(mockNumberTriviaRepository!.getRandomNumberTrivia())
        .thenAnswer((_) async => const Right(tNumberTrivia));

    // act
    final result = await usecase!(NoParams());

    // assert
    expect(result, const Right(tNumberTrivia));
    verify(mockNumberTriviaRepository!.getRandomNumberTrivia());
    verifyNoMoreInteractions(mockNumberTriviaRepository);
  });
}
