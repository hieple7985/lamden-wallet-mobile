// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Account _$$_AccountFromJson(Map<String, dynamic> json) => _$_Account(
      name: json['name'] as String,
      tau: (json['tau'] as num).toDouble(),
      link: json['link'] as bool,
      progress: (json['progress'] as num).toDouble(),
    );

Map<String, dynamic> _$$_AccountToJson(_$_Account instance) =>
    <String, dynamic>{
      'name': instance.name,
      'tau': instance.tau,
      'link': instance.link,
      'progress': instance.progress,
    };
