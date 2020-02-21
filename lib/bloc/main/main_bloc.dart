import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:triplen_app/models/board_model.dart';
import 'package:triplen_app/services/board_service.dart';

import './bloc.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  @override
  MainState get initialState => InitialMainState();

  List<BoardDataModel> listBoards = List<BoardDataModel>();

  @override
  Stream<MainState> mapEventToState(
    MainEvent event,
  ) async* {
    if (event is LoadHomeEvent) {
      yield* _mapEventLoadHome();
    }
  }

  Stream<MainState> _mapEventLoadHome() async* {
    this.listBoards.clear();
    BoardService boardService = BoardService();
    List<BoardDataModel> boards = await boardService.getAllBoards();
    print(boards.toString());
    boards.forEach((board) {
      if (board.status == 1) {
        this.listBoards.add(board);
      }
    });
    yield InitialMainState();
    yield HomeLoadedState();
  }
}