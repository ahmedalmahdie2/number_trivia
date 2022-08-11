/*
 * *
 *  * Created by Ahmed Almahdie @ iZAM Inc. on 8/10/2022.
 *  * ahmed.elmahdy@izam.co
 *  * Copyright (c) 2022. All rights reserved.
 *
 */

import 'package:equatable/equatable.dart';

class NumberTrivia extends Equatable {
  final String text;
  final int number;

  const NumberTrivia({required this.number, required this.text});

  @override
  List<Object?> get props => [
        text,
        number,
      ];
}
