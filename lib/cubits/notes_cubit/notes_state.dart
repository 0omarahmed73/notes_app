part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoading extends NotesState {}

final class NotesSuccess extends NotesState {
  final List<NoteModel> noteList;

  NotesSuccess(this.noteList);
}

final class NotesFailed extends NotesState {
  final String error;

  NotesFailed(this.error);
}
