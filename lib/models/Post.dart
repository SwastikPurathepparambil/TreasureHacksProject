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

import 'ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the Post type in your schema. */
@immutable
class Post extends Model {
  static const classType = const PostType();
  final String id;
  final String title;
  final PostStatus status;
  final int rating;
  final String content;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const Post._internal(
      {@required this.id,
      @required this.title,
      @required this.status,
      this.rating,
      this.content});

  factory Post(
      {@required String id,
      @required String title,
      @required PostStatus status,
      int rating,
      String content}) {
    return Post._internal(
        id: id == null ? UUID.getUUID() : id,
        title: title,
        status: status,
        rating: rating,
        content: content);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Post &&
        id == other.id &&
        title == other.title &&
        status == other.status &&
        rating == other.rating &&
        content == other.content;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("Post {");
    buffer.write("id=" + id + ", ");
    buffer.write("title=" + title + ", ");
    buffer.write("status=" + enumToString(status) + ", ");
    buffer.write(
        "rating=" + (rating != null ? rating.toString() : "null") + ", ");
    buffer.write("content=" + content);
    buffer.write("}");

    return buffer.toString();
  }

  Post copyWith(
      {@required String id,
      @required String title,
      @required PostStatus status,
      int rating,
      String content}) {
    return Post(
        id: id ?? this.id,
        title: title ?? this.title,
        status: status ?? this.status,
        rating: rating ?? this.rating,
        content: content ?? this.content);
  }

  Post.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        status = enumFromString<PostStatus>(json['status'], PostStatus.values),
        rating = json['rating'],
        content = json['content'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'status': enumToString(status),
        'rating': rating,
        'content': content
      };

  static final QueryField ID = QueryField(fieldName: "post.id");
  static final QueryField TITLE = QueryField(fieldName: "title");
  static final QueryField STATUS = QueryField(fieldName: "status");
  static final QueryField RATING = QueryField(fieldName: "rating");
  static final QueryField CONTENT = QueryField(fieldName: "content");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Post";
    modelSchemaDefinition.pluralName = "Posts";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Post.TITLE,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Post.STATUS,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Post.RATING,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Post.CONTENT,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class PostType extends ModelType<Post> {
  const PostType();

  @override
  Post fromJson(Map<String, dynamic> jsonData) {
    return Post.fromJson(jsonData);
  }
}
