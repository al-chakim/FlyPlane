import 'package:flutter/material.dart';
import 'package:plane/cubit/auth_cubit.dart';
import 'package:plane/cubit/page_cubit.dart';
import 'package:plane/ui/widgets/custom_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/theme.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {

        if (state is AuthFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: merah,
              content: Text(state.error)
            )
          );
        } else if (state is AuthInitial) {
          context .read<PageCubit>().setState(0);
          Navigator.pushNamedAndRemoveUntil(
            context, '/sign-up', (route) => false
          );
        }

        // TODO: implement listener
      },
      builder: (context, state) {

        if (state is AuthLoading){
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        return Center(
            child: CustomButton(
          title: 'Sign Out',
          onPressed: () {
            context.read<AuthCubit>().signOut();
          },
          widht: 220,
        ));
      },
    );
  }
}
