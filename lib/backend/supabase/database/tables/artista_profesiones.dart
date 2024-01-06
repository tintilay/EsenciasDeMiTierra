import '../database.dart';

class ArtistaProfesionesTable extends SupabaseTable<ArtistaProfesionesRow> {
  @override
  String get tableName => 'artistaProfesiones';

  @override
  ArtistaProfesionesRow createRow(Map<String, dynamic> data) =>
      ArtistaProfesionesRow(data);
}

class ArtistaProfesionesRow extends SupabaseDataRow {
  ArtistaProfesionesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ArtistaProfesionesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get artistaId => getField<int>('artista_id');
  set artistaId(int? value) => setField<int>('artista_id', value);

  int? get prefesionId => getField<int>('prefesion_id');
  set prefesionId(int? value) => setField<int>('prefesion_id', value);
}
