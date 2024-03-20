import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../data/model/currency_model.dart';
import '../../remote/api_client.dart';

part 'currency_course_event.dart';
part 'currency_course_state.dart';

class CurrencyCourseBloc extends Bloc<CurrencyCourseEvent, CurrencyCourseState> {
  final ApiClient apiClient;

  CurrencyCourseBloc({required this.apiClient}) : super(CurrencyCourseInitial());
  Future<void>currencyList(CurrencyCourseEvent state,Emitter<CurrencyCourseState>emit)async{
       try{
         if(state is CurrencyCourseLoaded){
           emit(CurrencyCourseLoading());
           final List<CurrencyModel> currencyList = await apiClient.getCurrency();
           print("Nusrat: ${currencyList.length}");
           emit( CurrencyCourseLoaded(currencyList));
         }
       }catch(e){
         emit(CurrencyCourseError(e));
       }
  }

/*  @override
  Future<CurrencyCourseState> mapEventToState(CurrencyCourseEvent event,Emitter<CurrencyCourseState>emit) async{
    if (event is CurrencyCourseLoaded) {
      emit(CurrencyCourseLoading());

      try {
        final List<CurrencyModel> currencyList = await apiClient.getCurrency();
        print("Nusrat: ${currencyList.length}");
        emit( CurrencyCourseLoaded(currencyList));
      } catch (e) {
        emit(CurrencyCourseError(e));
      }
    }
       emit(CurrencyCourseInitial());
  }*/
}
