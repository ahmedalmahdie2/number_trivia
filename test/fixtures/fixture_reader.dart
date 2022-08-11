/*
 * *
 *  * Created by Ahmed Almahdie @ iZAM Inc. on 8/11/2022.
 *  * ahmed.elmahdy@izam.co
 *  * Copyright (c) 2022. All rights reserved.
 *
 */

import 'dart:io';

String fixture(String name) => File('test/fixtures/$name').readAsStringSync();
