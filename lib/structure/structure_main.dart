import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/counter/domain/entities/counter.dart';
import 'features/counter/domain/usecases/decrement_counter.dart';
import 'features/counter/domain/usecases/increment_counter.dart';
import 'features/counter/domain/usecases/load_count.dart';
import 'features/counter/domain/usecases/reset_counter.dart';
import 'features/counter/presentation/bloc/counter/counter_bloc.dart';
import 'features/counter/presentation/bloc/counter/counter_event.dart';
import 'features/counter/presentation/bloc/counter/counter_state.dart';
import 'features/counter/presentation/bloc/theme/theme_bloc.dart';
import 'features/counter/presentation/bloc/theme/theme_event.dart';
import 'features/counter/presentation/bloc/theme/theme_state.dart';
import 'injection.dart';

class StructureMain extends StatelessWidget {
  const StructureMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) => CounterBloc(
            getIt<IncrementCounter>(),
            getIt<DecrementCounter>(),
            getIt<ResetCounter>(),
            getIt<LoadCount>(),
          )..add(const CounterEvent.loadCount()),
        ),
        BlocProvider(
          create: (context) => getIt<ThemeBloc>()..add(const ThemeEvent.load()),
        ),
      ],
      child: MaterialApp(title: 'Bloc Clean Architecture', home: CounterPage()),
    );
  }
}


class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, themeState) {
        return Scaffold(
          backgroundColor: themeState.isDark ? Colors.blueGrey : Colors.white,
          appBar: AppBar(title: Text('Counter + Theme Bloc')),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocListener<CounterBloc, CounterState>(
                listener: (context, state) {
                  state.maybeWhen(
                    success: (counter) {
                      if (counter.value != 0 && counter.value % 5 == 0) {
                        context.read<ThemeBloc>().add(
                          const ThemeEvent.togglePressed(),
                        );
                      }
                    },
                    orElse: () {},
                  );
                },
                child: BlocBuilder<CounterBloc, CounterState>(
                  builder: (context, state) {
                    return Center(
                      child: state.when(
                        initial: () => _buildCounter(context, 0),
                        loading: () => CircularProgressIndicator(),
                        success:
                            (counter) => _buildCounter(context, counter.value),
                        failure: (error) => Text('Error: $error'),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  context.read<ThemeBloc>().add(
                    const ThemeEvent.togglePressed(),
                  );
                },
                child: Text("Toggle Theme Color"),
              ),
              SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }

  Widget _buildCounter(BuildContext context, int value) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Counter value: $value', style: TextStyle(fontSize: 24)),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            final current = Counter(value: value);
            context.read<CounterBloc>().add(
              CounterEvent.incrementPressed(current),
            );
          },
          child: Text('Increment'),
        ),
        ElevatedButton(
          onPressed: () {
            final current = Counter(value: value);
            context.read<CounterBloc>().add(
              CounterEvent.decrementPressed(current),
            );
          },
          child: Text('Decrement'),
        ),
        ElevatedButton(
          onPressed: () {
            final current = Counter(value: value);
            context.read<CounterBloc>().add(CounterEvent.resetPressed(current));
          },
          child: Text('Reset'),
        ),
      ],
    );
  }
}
