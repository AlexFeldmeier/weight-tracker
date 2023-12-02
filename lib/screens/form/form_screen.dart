import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:weight_tracker/models/weight_model.dart';
import 'package:weight_tracker/repositories/weight_repository.dart';
import 'package:weight_tracker/screens/form/form_cubit.dart';

class FormScreen extends HookWidget {
  final WeightModel? existingWeightModel;

  const FormScreen({super.key, this.existingWeightModel});

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController(text: existingWeightModel?.lbs?.toString() ?? '');

    return BlocProvider(
      create: (context) => FormCubit(context.read<WeightRepository>(), existingWeightModel),
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Form'),
            actions: [
              BlocBuilder<FormCubit, WeightModel>(
                builder: (context, state) => state.id != null
                    ? IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          context.read<FormCubit>().deleteWeight();
                          context.pop();
                        },
                      )
                    : const SizedBox.shrink(),
              ),
            ],
          ),
          body: Column(
            children: [
              TextFormField(
                controller: textController,
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a weight';
                  }
                  final number = double.tryParse(value);
                  if (number == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'Weight in lbs',
                ),
                onChanged: (value) => context.read<FormCubit>().setWeight(double.tryParse(value) ?? 0),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.read<FormCubit>().saveWeight();
              context.pop();
            },
            child: const Icon(Icons.check),
          )),
    );
  }
}
