/*
 * *
 *  * Created by Ahmed Almahdie @ iZAM Inc. on 8/10/2022.
 *  * ahmed.elmahdy@izam.co
 *  * Copyright (c) 2022. All rights reserved.
 *
 */
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {}

// General Failures
class ServerFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class CacheFailure extends Failure {
  @override
  List<Object?> get props => [];
}
