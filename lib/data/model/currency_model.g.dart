// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrencyModelImpl _$$CurrencyModelImplFromJson(Map<String, dynamic> json) =>
    _$CurrencyModelImpl(
      json['id'] as int,
      json['code'] as String,
      json['ccy'] as String,
      json['ccyNmRu'] as String,
      json['ccyNmUz'] as String,
      json['ccyNmUzc'] as String,
      json['ccyNmEn'] as String,
      json['nominal'] as String,
      json['rate'] as String,
      json['diff'] as String,
      json['date'] as String,
    );

Map<String, dynamic> _$$CurrencyModelImplToJson(_$CurrencyModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'ccy': instance.ccy,
      'ccyNmRu': instance.ccyNmRu,
      'ccyNmUz': instance.ccyNmUz,
      'ccyNmUzc': instance.ccyNmUzc,
      'ccyNmEn': instance.ccyNmEn,
      'nominal': instance.nominal,
      'rate': instance.rate,
      'diff': instance.diff,
      'date': instance.date,
    };
