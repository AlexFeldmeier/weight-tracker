import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:weight_tracker/constants/theme_constants.dart';
import 'package:weight_tracker/repositories/auth_repository.dart';
import 'package:weight_tracker/repositories/weight_repository.dart';
import 'package:weight_tracker/screens/list/list_cubit.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ListCubit(context.read<WeightRepository>()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Log'),
          actions: [
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () async {
                if (await context.read<AuthRepository>().signOut() && context.mounted) {
                  context.go('/');
                }
              },
            ),
          ],
        ),
        body: BlocBuilder<ListCubit, ListState>(
          builder: (context, state) => state.when(
            initial: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (weights) => ListView.builder(
              padding: const EdgeInsets.all(ThemeConstants.screenPadding),
              itemCount: weights.length,
              itemBuilder: (context, index) {
                final weight = weights[index];
                return ListTile(
                  title: Text('${weight.lbs?.toString() ?? ''} lbs'),
                  subtitle: Text(weight.timestamp != null ? DateFormat.yMMMd().add_jm().format(weight.timestamp!) : ''),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.listItemRadius)),
                  ),
                  onTap: () => context.go('/list/edit', extra: {'weight': weight}),
                );
              },
            ),
            error: () => const Center(
              child: Text('Error'),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.go('/list/add'),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
