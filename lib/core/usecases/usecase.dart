/*
 * *
 *  * Created by Ahmed Almahdie @ iZAM Inc. on 8/11/2022.
 *  * ahmed.elmahdy@izam.co
 *  * Copyright (c) 2022. All rights reserved.
 *
 */
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../error/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure?, Type?>?>? call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
