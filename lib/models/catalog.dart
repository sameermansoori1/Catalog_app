import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class CatalogModel {
  static List<Item> items = [

  ];
}

class Item {
   int id;
   String name;
   String desc;
   num price;
   String color;
   String image;

//<editor-fold desc="Data Methods">

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Item &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          desc == other.desc &&
          price == other.price &&
          color == other.color &&
          image == other.image);

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      desc.hashCode ^
      price.hashCode ^
      color.hashCode ^
      image.hashCode;

  @override
  String toString() {
    return 'Item{' +
        ' id: $id,' +
        ' name: $name,' +
        ' desc: $desc,' +
        ' price: $price,' +
        ' color: $color,' +
        ' image: $image,' +
        '}';
  }

  Item copyWith({
    int? id,
    String? name,
    String? desc,
    num? price,
    String? color,
    String? image,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      price: price ?? this.price,
      color: color ?? this.color,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap({
    String Function(String key)? keyMapper,
  }) {
    keyMapper ??= (key) => key;

    return {
      keyMapper('id'): this.id,
      keyMapper('name'): this.name,
      keyMapper('desc'): this.desc,
      keyMapper('price'): this.price,
      keyMapper('color'): this.color,
      keyMapper('image'): this.image,
    };
  }

  factory Item.fromMap(
    Map<String, dynamic> map, {
    String Function(String key)? keyMapper,
  }) {
    keyMapper ??= (key) => key;

    return Item(
      id: map[keyMapper('id')] as int,
      name: map[keyMapper('name')] as String,
      desc: map[keyMapper('desc')] as String,
      price: map[keyMapper('price')] as num,
      color: map[keyMapper('color')] as String,
      image: map[keyMapper('image')] as String,
    );
  }

//</editor-fold>
}
