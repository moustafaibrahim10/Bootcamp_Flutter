import 'package:bootcamp/modules/todo_app/cubit/cubit.dart';
import 'package:bootcamp/modules/todo_app/cubit/states.dart';
import 'package:bootcamp/modules/todo_app/modules/archive_tasks/archive_tasks.dart';
import 'package:bootcamp/modules/todo_app/modules/new_tasks/new_tasks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../modules/done_tasks/done_tasks.dart';

class LayoutScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> TodoCubit(),
      child: BlocConsumer<TodoCubit,TodoStates>(
        listener: (context,state){},
        builder: (context,state)
        {
          var cubit = TodoCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Text('TO DO App'),
            ),
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.currentIndex,
              onTap: (index)
              {
                cubit.changeBottomIndex(index);
              },
              items:cubit.bottomItems,
            ),
          );
        },
      ),
    );
  }
}
