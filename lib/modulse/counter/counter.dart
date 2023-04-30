import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/modulse/counter/cuibt/cuibt.dart';
import 'package:flutter_application_1/modulse/counter/cuibt/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class counterScrean extends StatelessWidget {
//

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (context, state) {
          // if (state is CounterMinusState) {
          //   print('minus state ${state.counter}');
          // }

          // if (state is CounterPlusState) {
          //   print('plus state ${state.counter}');
          // }
        },
        builder: (contex, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Counter'),
            ),
            body: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('MINUS'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    '${CounterCubit.get(context).counter}',
                    style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    CounterCubit.get(context).plus();
                  },
                  child: Text('PUNUS'),
                ),
              ],
            )),
          );
        },
      ),
    );
  }
}
