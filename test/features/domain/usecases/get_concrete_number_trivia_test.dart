/*
 * *
 *  * Created by Ahmed Almahdie @ iZAM Inc. on 8/10/2022.
 *  * ahmed.elmahdy@izam.co
 *  * Copyright (c) 2022. All rights reserved.
 *
 */
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:number_trivia/features/domain/entities/number_trivia.dart';
import 'package:number_trivia/features/domain/repositories/number_trivia_repository.dart';
import 'package:number_trivia/features/domain/usecases/get_concrete_number_trivia.dart';

import 'get_concrete_number_trivia_test.mocks.dart';

@GenerateMocks([NumberTriviaRepository])
void main() {
  GetConcreteNumberTrivia? usecase;
  MockNumberTriviaRepository? mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetConcreteNumberTrivia(repository: mockNumberTriviaRepository!);
  });

  const tNumber = 1;
  const tNumberTrivia = NumberTrivia(number: 1, text: 'test');

  test('should get trivia for the number from the repository', () async {
    when(mockNumberTriviaRepository!.getConcreteNumberTrivia(any))
        .thenAnswer((_) async => const Right(tNumberTrivia));

    final result = await usecase!(const Params(number: tNumber));

    expect(result, const Right(tNumberTrivia));

    verify(mockNumberTriviaRepository!.getConcreteNumberTrivia(tNumber));

    verifyNoMoreInteractions(mockNumberTriviaRepository);
  });
}
