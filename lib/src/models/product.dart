import 'package:flutter/material.dart';

class Product {
  final String _id;
  final String _name;
  final Color _color;

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  const Product({
    @required String id,
    @required String name,
    @required Color color,
  })  : _id = id,
        _name = name,
        _color = color;

  Product copyWith({
    String id,
    String name,
    Color color,
  }) {
    if ((id == null || identical(id, this._id)) &&
        (name == null || identical(name, this._name)) &&
        (color == null || identical(color, this._color))) {
      return this;
    }

    return new Product(
      id: id ?? this._id,
      name: name ?? this._name,
      color: color ?? this._color,
    );
  }

  @override
  String toString() {
    return 'Product{_id: $_id, _name: $_name, _color: $_color}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Product &&
          runtimeType == other.runtimeType &&
          _id == other._id &&
          _name == other._name &&
          _color == other._color);

  @override
  int get hashCode => _id.hashCode ^ _name.hashCode ^ _color.hashCode;

  factory Product.fromMap(Map<String, dynamic> map) {
    return new Product(
      id: map['_id'] as String,
      name: map['_name'] as String,
      color: map['_color'] as Color,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      '_id': this._id,
      '_name': this._name,
      '_color': this._color,
    } as Map<String, dynamic>;
  }

//</editor-fold>

}
