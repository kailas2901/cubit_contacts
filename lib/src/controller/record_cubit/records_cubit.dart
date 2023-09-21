import 'package:contacts_app2/src/controller/record_cubit/records_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:equatable/equatable.dart';

import '../../model/record.dart';

part 'records_state.dart';

class RecordsCubit extends Cubit<RecordsState> {
  RecordsCubit() : super(RecordsInitial());

  getrecordedData()async {
    emit(RecordsLoading());

    Recordsrepository repository = Recordsrepository();

    List<dynamic>?  data = await repository.getData();

    if(data == null){
      emit(RecordsError());
      return;
    }else{
      List<Records> records1 = data.map((item) => Records.fromjson(item)).toList();
      emit(RecordsSucess(records : records1));
    }

  }
}
