import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_example/blocs/currency_bloc/currency_course_bloc.dart';
class CurencyCourceScreen extends StatefulWidget {
  const CurencyCourceScreen({super.key});

  @override
  State<CurencyCourceScreen> createState() => _CurencyCourceScreenState();
}

class _CurencyCourceScreenState extends State<CurencyCourceScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrencyCourseBloc, CurrencyCourseState>(builder: (context, state) {
      print("Nusrat: ${state.props}");
      print("nusrat --->ko't:${state.props[4].toString()}");
      print("Nusrat: ${state.props.last}");
      print("Nusrat: ${"https://nbu.uz/en/exchange-rates/json/"}");
      return ListView.separated(itemBuilder:  (BuildContext context, int index) {
        return ListTile(
          title: Text('item $index'),
        );
      }, separatorBuilder:(BuildContext context, int index) => const Divider(), itemCount: 100);
    });
  }
}
