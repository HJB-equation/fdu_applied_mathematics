import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fl_chart/fl_chart.dart';

import 'cms.dart';

class Eg1 extends StatelessWidget {
  const Eg1({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => M()..add(Init(1)),
      child: Eg1View(),
    );
  }
}

class Eg1View extends StatelessWidget {
  const Eg1View({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<M, S>(
      listenWhen: (previous, current) => current.hasReachedInfinity,
      listener: (context, state) {
        if (state.hasReachedInfinity) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('Reached infinity!')));
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(child: Controller()),
            Expanded(flex: 3, child: Figure()),
          ],
        ),
      ),
    );
  }
}

class Controller extends StatelessWidget {
  const Controller({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(children: [InitialValue(), StepButton()]);
  }
}

class InitialValue extends StatefulWidget {
  const InitialValue({super.key});

  @override
  State<InitialValue> createState() => _InitialValueState();
}

class _InitialValueState extends State<InitialValue> {
  final TextEditingController _controller = TextEditingController(text: '1');

  void _setValue() {
    final value = double.tryParse(_controller.text);
    if (value != null) {
      context.read<M>().add(Init(value));
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          ElevatedButton(onPressed: _setValue, child: const Text('Set x0')),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Enter initial value',
                border: OutlineInputBorder(),
              ),
              onSubmitted: (_) => _setValue(),
            ),
          ),
        ],
      ),
    );
  }
}

class StepButton extends StatelessWidget {
  const StepButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.read<M>().add(Step1()),
      child: Text("exp"),
    );
  }
}

class Figure extends StatelessWidget {
  const Figure({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4 / 3, // Width to height ratio (adjust as needed)
      child: BlocBuilder<M, S>(
        builder: (context, state) {
          return LineChart(
            LineChartData(
              lineBarsData: [
                LineChartBarData(
                  spots: [
                    for (final y in state.points)
                      FlSpot(state.points.indexOf(y).toDouble(), y),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
