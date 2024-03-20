part of 'currency_course_bloc.dart';

@immutable
sealed class CurrencyCourseState extends Equatable {
  const CurrencyCourseState();
  @override
  List<Object> get props => [];
}

final class CurrencyCourseInitial extends CurrencyCourseState {}

final class CurrencyCourseLoading extends CurrencyCourseState {}

final class CurrencyCourseLoaded extends CurrencyCourseState {
  final List<CurrencyModel> currencyList;
  const CurrencyCourseLoaded(this.currencyList);

  @override
  List<Object> get props => super.props..addAll([currencyList]);
}

final class CurrencyCourseError extends CurrencyCourseState {
  final Object error;
  const CurrencyCourseError(this.error);
  @override
  List<Object> get props => super.props..addAll([error]);
}
