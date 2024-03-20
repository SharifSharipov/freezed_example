
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'currency_model.freezed.dart';
part 'currency_model.g.dart';

@freezed
class CurrencyModel with _$CurrencyModel {
  const factory CurrencyModel(
  int id,
  String code,
  String ccy,
  String ccyNmRu,
  String ccyNmUz,
  String ccyNmUzc,
  String ccyNmEn,
  String nominal,
  String rate,
  String diff,
  String date,
      ) = _CurrencyModel;

  factory CurrencyModel.fromJson(Map<String, dynamic> json) => _$CurrencyModelFromJson(json);
}

