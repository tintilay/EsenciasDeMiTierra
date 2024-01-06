import '../database.dart';

class RecursosEducativosTable extends SupabaseTable<RecursosEducativosRow> {
  @override
  String get tableName => 'recursosEducativos';

  @override
  RecursosEducativosRow createRow(Map<String, dynamic> data) =>
      RecursosEducativosRow(data);
}

class RecursosEducativosRow extends SupabaseDataRow {
  RecursosEducativosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RecursosEducativosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get fCreacion => getField<DateTime>('f_creacion')!;
  set fCreacion(DateTime value) => setField<DateTime>('f_creacion', value);

  int? get tipo => getField<int>('tipo');
  set tipo(int? value) => setField<int>('tipo', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  String? get url => getField<String>('url');
  set url(String? value) => setField<String>('url', value);

  bool? get estado => getField<bool>('estado');
  set estado(bool? value) => setField<bool>('estado', value);

  DateTime? get fActualizacion => getField<DateTime>('f_actualizacion');
  set fActualizacion(DateTime? value) =>
      setField<DateTime>('f_actualizacion', value);

  String? get autor => getField<String>('autor');
  set autor(String? value) => setField<String>('autor', value);

  String? get usuarioId => getField<String>('usuario_id');
  set usuarioId(String? value) => setField<String>('usuario_id', value);

  int? get disciplinaId => getField<int>('disciplina_id');
  set disciplinaId(int? value) => setField<int>('disciplina_id', value);

  DateTime? get fCreacionRecurso => getField<DateTime>('f_creacionRecurso');
  set fCreacionRecurso(DateTime? value) =>
      setField<DateTime>('f_creacionRecurso', value);
}
