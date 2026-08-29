import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/common/domain/error.dart';
import 'package:tafsir/search/domain/found_item.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit()
    : super(
        const .new(.general('ABC'), .everyWhere, [
          .new(
            surah: .new(
              .new(1),
              .new('Surah'),
              .new('value'),
              .new('value'),
              .madinah,
              .new('value'),
              .new(1),
            ),
            aayahNumber: .new(1),
            text: .new('found'),
            prefix: .new('prefix '),
            suffix: .new(' sufix'),
          ),
          .new(
            surah: .new(
              .new(1),
              .new('Surah'),
              .new('value'),
              .new('value'),
              .madinah,
              .new('value'),
              .new(1),
            ),
            aayahNumber: .new(1),
            text: .new('found'),
            prefix: .new('prefix '),
            suffix: .new(
              ' sufix sufix sufix sufix sufix sufix sufix sufix sufix sufix',
            ),
          ),
          .new(
            surah: .new(
              .new(1),
              .new('Surah'),
              .new('value'),
              .new('value'),
              .madinah,
              .new('value'),
              .new(1),
            ),
            aayahNumber: .new(1),
            text: .new('found'),
            prefix: .new(' sufix'),
          ),
          .new(
            surah: .new(
              .new(1),
              .new('Surah'),
              .new('value'),
              .new('value'),
              .madinah,
              .new('value'),
              .new(1),
            ),
            aayahNumber: .new(1),
            text: .new('found'),
            suffix: .new(' sufix'),
          ),
        ]),
      );

  void setSearchIn(SeachIn searchIn) => emit(
    state.copyWith(searchIn: searchIn),
  );

  void clearError() => emit(state.copyWith(error: null));
}
