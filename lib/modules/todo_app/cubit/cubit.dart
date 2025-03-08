import 'package:bootcamp/modules/todo_app/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../modules/archive_tasks/archive_tasks.dart';
import '../modules/done_tasks/done_tasks.dart';
import '../modules/new_tasks/new_tasks.dart';

class TodoCubit extends Cubit<TodoStates>
{
  TodoCubit() :super(InitialState()) ;

  static TodoCubit get(context) => BlocProvider.of(context);
  List<Widget> screens=[
    NewTasks(),
    DoneTasks(),
    ArchiveTasks(),
  ];

  int currentIndex =0;
  void changeBottomIndex(index)
  {
    currentIndex =index;
    emit(ChangeBottomIndexState());
  }

  List<BottomNavigationBarItem> bottomItems=[
    BottomNavigationBarItem(icon: Icon(Icons.date_range_outlined),label: 'New Tasks'),
    BottomNavigationBarItem(icon: Icon(Icons.task_alt_sharp),label: 'Done Tasks'),
    BottomNavigationBarItem(icon: Icon(Icons.archive_outlined),label: 'Archive Tasks'),
  ];

}