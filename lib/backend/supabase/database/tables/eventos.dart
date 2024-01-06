import '../database.dart';

class EventosTable extends SupabaseTable<EventosRow> {
  @override
  String get tableName => 'eventos';

  @override
  EventosRow createRow(Map<String, dynamic> data) => EventosRow(data);
}

class EventosRow extends SupabaseDataRow {
  EventosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EventosTable();

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

  int? get tipoEvento => getField<int>('tipo_evento');
  set tipoEvento(int? value) => setField<int>('tipo_evento', value);

  DateTime? get fInicio => getField<DateTime>('f_inicio');
  set fInicio(DateTime? value) => setField<DateTime>('f_inicio', value);

  PostgresTime? get hInicio => getField<PostgresTime>('h_inicio');
  set hInicio(PostgresTime? value) => setField<PostgresTime>('h_inicio', value);

  DateTime? get fFin => getField<DateTime>('f_fin');
  set fFin(DateTime? value) => setField<DateTime>('f_fin', value);

  PostgresTime? get hFin => getField<PostgresTime>('h_fin');
  set hFin(PostgresTime? value) => setField<PostgresTime>('h_fin', value);

  String? get urlImagen => getField<String>('url_imagen');
  set urlImagen(String? value) => setField<String>('url_imagen', value);

  String? get estadoEvento => getField<String>('estado_evento');
  set estadoEvento(String? value) => setField<String>('estado_evento', value);

  String? get modalidad => getField<String>('modalidad');
  set modalidad(String? value) => setField<String>('modalidad', value);

  String? get ubicacion => getField<String>('ubicacion');
  set ubicacion(String? value) => setField<String>('ubicacion', value);

  String? get urlAdicional => getField<String>('url_adicional');
  set urlAdicional(String? value) => setField<String>('url_adicional', value);

  bool? get estado => getField<bool>('estado');
  set estado(bool? value) => setField<bool>('estado', value);

  String? get usuarioId => getField<String>('usuario_id');
  set usuarioId(String? value) => setField<String>('usuario_id', value);

  int? get disciplinaId => getField<int>('disciplina_id');
  set disciplinaId(int? value) => setField<int>('disciplina_id', value);
}
