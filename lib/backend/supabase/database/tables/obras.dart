import '../database.dart';

class ObrasTable extends SupabaseTable<ObrasRow> {
  @override
  String get tableName => 'obras';

  @override
  ObrasRow createRow(Map<String, dynamic> data) => ObrasRow(data);
}

class ObrasRow extends SupabaseDataRow {
  ObrasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ObrasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get fCreacion => getField<DateTime>('f_creacion');
  set fCreacion(DateTime? value) => setField<DateTime>('f_creacion', value);

  String? get usuarioId => getField<String>('usuario_id');
  set usuarioId(String? value) => setField<String>('usuario_id', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  String? get urlImagen => getField<String>('url_imagen');
  set urlImagen(String? value) => setField<String>('url_imagen', value);

  DateTime? get fCreacionObra => getField<DateTime>('f_creacionObra');
  set fCreacionObra(DateTime? value) =>
      setField<DateTime>('f_creacionObra', value);

  bool? get estado => getField<bool>('estado');
  set estado(bool? value) => setField<bool>('estado', value);

  int? get disciplinaId => getField<int>('disciplina_id');
  set disciplinaId(int? value) => setField<int>('disciplina_id', value);

  int? get materialId => getField<int>('material_id');
  set materialId(int? value) => setField<int>('material_id', value);

  int? get estiloId => getField<int>('estilo_id');
  set estiloId(int? value) => setField<int>('estilo_id', value);

  int? get tecnicaId => getField<int>('tecnica_id');
  set tecnicaId(int? value) => setField<int>('tecnica_id', value);

  DateTime? get fActualizacion => getField<DateTime>('f_actualizacion');
  set fActualizacion(DateTime? value) =>
      setField<DateTime>('f_actualizacion', value);

  String? get tamano => getField<String>('tamano');
  set tamano(String? value) => setField<String>('tamano', value);
}
