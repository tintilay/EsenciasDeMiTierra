import '../database.dart';

class DisciplinasTable extends SupabaseTable<DisciplinasRow> {
  @override
  String get tableName => 'disciplinas';

  @override
  DisciplinasRow createRow(Map<String, dynamic> data) => DisciplinasRow(data);
}

class DisciplinasRow extends SupabaseDataRow {
  DisciplinasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DisciplinasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get fCreacion => getField<DateTime>('f_creacion')!;
  set fCreacion(DateTime value) => setField<DateTime>('f_creacion', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  bool? get estado => getField<bool>('estado');
  set estado(bool? value) => setField<bool>('estado', value);

  DateTime? get fActualizacion => getField<DateTime>('f_actualizacion');
  set fActualizacion(DateTime? value) =>
      setField<DateTime>('f_actualizacion', value);
}
