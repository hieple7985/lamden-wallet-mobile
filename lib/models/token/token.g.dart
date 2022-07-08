// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Token _$$_TokenFromJson(Map<String, dynamic> json) => _$_Token(
      name: json['name'] as String,
      symbol: json['symbol'] as String,
      address: json['address'] as String,
      tau: (json['tau'] as num).toDouble(),
    );

Map<String, dynamic> _$$_TokenToJson(_$_Token instance) => <String, dynamic>{
      'name': instance.name,
      'symbol': instance.symbol,
      'address': instance.address,
      'tau': instance.tau,
    };
