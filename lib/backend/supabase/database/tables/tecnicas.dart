import '../database.dart';

class TecnicasTable extends SupabaseTable<TecnicasRow> {
  @override
  String get tableName => 'tecnicas';

  @override
  TecnicasRow createRow(Map<String, dynamic> data) => TecnicasRow(data);
}

class TecnicasRow extends SupabaseDataRow {
  TecnicasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TecnicasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get fCreacion => getField<DateTime>('f_creacion')!;
  set fCreacion(DateTime value) => setField<DateTime>('f_creacion', value);

  DateTime? get fActualizacion => getField<DateTime>('f_actualizacion');
  set fActualizacion(DateTime? value) =>
      setField<DateTime>('f_actualizacion', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  bool? get estado => getField<bool>('estado');
  set estado(bool? value) => setField<bool>('estado', value);

  int? get disciplinaId => getField<int>('disciplina_id');
  set disciplinaId(int? value) => setField<int>('disciplina_id', value);
}
