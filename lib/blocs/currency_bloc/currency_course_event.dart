part of 'currency_course_bloc.dart';

@immutable
sealed class CurrencyCourseEvent extends Equatable  {
  final List<CurrencyModel> currencyList;
  const CurrencyCourseEvent({required this.currencyList});

  @override
  List<Object?> get props => [currencyList];
}
