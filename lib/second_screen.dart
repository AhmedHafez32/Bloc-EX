import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/counter_bloc.dart';
import 'bloc/counter_events.dart';
import 'bloc/counter_states.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Second Page Counter:'),
            BlocBuilder<CounterBloc, CounterStates>(
              builder: (context, state) {
                final current = state as CounterState;
                return Text(
                  current.counter.toString(),
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () =>
                      context.read<CounterBloc>().add(Decrement()),
                  icon: const Icon(Icons.remove_circle,
                      size: 40, color: Colors.deepPurple),
                ),
                const SizedBox(width: 30),
                IconButton(
                  onPressed: () =>
                      context.read<CounterBloc>().add(Increment()),
                  icon: const Icon(Icons.add_circle,
                      size: 40, color: Colors.green),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
