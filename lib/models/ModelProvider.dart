/*
* Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'Post.dart';
import 'Todo.dart';

export 'Post.dart';
export 'PostStatus.dart';
export 'Todo.dart';

class ModelProvider implements ModelProviderInterface {
  @override
  String version = "d7eb87ed13ba48277010521f88bec5e2";
  @override
  List<ModelSchema> modelSchemas = [Post.schema, Todo.schema];
  static final ModelProvider _instance = ModelProvider();

  static ModelProvider get instance => _instance;
}
