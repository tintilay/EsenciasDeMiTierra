import '../database.dart';

class MiembrosGrupoTable extends SupabaseTable<MiembrosGrupoRow> {
  @override
  String get tableName => 'miembrosGrupo';

  @override
  MiembrosGrupoRow createRow(Map<String, dynamic> data) =>
      MiembrosGrupoRow(data);
}

class MiembrosGrupoRow extends SupabaseDataRow {
  MiembrosGrupoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MiembrosGrupoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get fCreacion => getField<DateTime>('f_creacion')!;
  set fCreacion(DateTime value) => setField<DateTime>('f_creacion', value);

  String get nombre => getField<String>('nombre')!;
  set nombre(String value) => setField<String>('nombre', value);

  DateTime? get fActualizacion => getField<DateTime>('f_actualizacion');
  set fActualizacion(DateTime? value) =>
      setField<DateTime>('f_actualizacion', value);

  bool? get estado => getField<bool>('estado');
  set estado(bool? value) => setField<bool>('estado', value);

  int? get artistaId => getField<int>('artista_id');
  set artistaId(int? value) => setField<int>('artista_id', value);

  int? get numeroMiembros => getField<int>('numeroMiembros');
  set numeroMiembros(int? value) => setField<int>('numeroMiembros', value);
}
