part of 'records_cubit.dart';

abstract class RecordsState extends Equatable {
  const RecordsState();
}

//mainly 4 states in cubit state management error,sucess,loading and init

class RecordsInitial extends RecordsState {
  @override
  List<Object> get props => [];
}

class RecordsLoading extends RecordsState {
  @override
  List<Object> get props => [];
}

class RecordsSucess extends RecordsState {
  final List<Records> records;

  RecordsSucess({required this.records});

  @override
  List<Object> get props => [records];

}

class RecordsError extends RecordsState {
  @override
  List<Object> get props => [];
}
