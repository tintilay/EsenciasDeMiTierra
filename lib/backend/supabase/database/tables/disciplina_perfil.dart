import '../database.dart';

class DisciplinaPerfilTable extends SupabaseTable<DisciplinaPerfilRow> {
  @override
  String get tableName => 'disciplinaPerfil';

  @override
  DisciplinaPerfilRow createRow(Map<String, dynamic> data) =>
      DisciplinaPerfilRow(data);
}

class DisciplinaPerfilRow extends SupabaseDataRow {
  DisciplinaPerfilRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DisciplinaPerfilTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get fCreacion => getField<DateTime>('f_creacion')!;
  set fCreacion(DateTime value) => setField<DateTime>('f_creacion', value);

  DateTime? get fActualizacion => getField<DateTime>('f_actualizacion');
  set fActualizacion(DateTime? value) =>
      setField<DateTime>('f_actualizacion', value);

  int? get disciplinaId => getField<int>('disciplina_id');
  set disciplinaId(int? value) => setField<int>('disciplina_id', value);

  int? get perfilArtistaId => getField<int>('perfilArtista_id');
  set perfilArtistaId(int? value) => setField<int>('perfilArtista_id', value);
}
