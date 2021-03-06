import 'package:equatable/equatable.dart';
import 'package:triplen_app/models/board_detail_model.dart';
import 'package:triplen_app/models/board_model.dart';
import 'package:triplen_app/models/maps_model.dart';

abstract class BoardEvent extends Equatable {
  const BoardEvent();
  @override
  List<Object> get props => [];
}

class LoadDetailBoardEvent extends BoardEvent {
  final BoardDataModel data;

  LoadDetailBoardEvent({this.data});
}

class DeleteBoardEvent extends BoardEvent {
  final int id;

  DeleteBoardEvent({this.id});
}

class SelectDateTimeBoardEvent extends BoardEvent {
  final DateTime data;

  SelectDateTimeBoardEvent({this.data});
}

class AddBoardEvent extends BoardEvent {
  final String name;

  AddBoardEvent({this.name});
}

class SearchMapsEvent extends BoardEvent {
  final String query;

  SearchMapsEvent({this.query});
}

class SelectMapsEvent extends BoardEvent {
  final MapsDataModel mapsDataModel;

  SelectMapsEvent({this.mapsDataModel});
}

class SaveTaskEvent extends BoardEvent {
  final String name, id;
  final DateTime date;

  SaveTaskEvent({this.name, this.id, this.date});
}

class MarkAsDoneTask extends BoardEvent {
  final String total;
  final BoardDetailDataModel data;

  MarkAsDoneTask({this.data, this.total});
}

class DeleteTaskEvent extends BoardEvent {
  final int id;

  DeleteTaskEvent({this.id});
}

class UpdateBoardEvent extends BoardEvent {
  final BoardDataModel data;

  UpdateBoardEvent({this.data});
}

class LoadDetailHistoryEvent extends BoardEvent {
  final int id;

  LoadDetailHistoryEvent({this.id});
}