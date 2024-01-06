import '../database.dart';

class NoticiasTable extends SupabaseTable<NoticiasRow> {
  @override
  String get tableName => 'noticias';

  @override
  NoticiasRow createRow(Map<String, dynamic> data) => NoticiasRow(data);
}

class NoticiasRow extends SupabaseDataRow {
  NoticiasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NoticiasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get fCreacion => getField<DateTime>('f_creacion');
  set fCreacion(DateTime? value) => setField<DateTime>('f_creacion', value);

  DateTime? get fActualizacion => getField<DateTime>('f_actualizacion');
  set fActualizacion(DateTime? value) =>
      setField<DateTime>('f_actualizacion', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  String? get medioUrl => getField<String>('medio_url');
  set medioUrl(String? value) => setField<String>('medio_url', value);

  String? get enlace => getField<String>('enlace');
  set enlace(String? value) => setField<String>('enlace', value);

  bool? get estado => getField<bool>('estado');
  set estado(bool? value) => setField<bool>('estado', value);

  String? get usuarioId => getField<String>('usuario_id');
  set usuarioId(String? value) => setField<String>('usuario_id', value);

  int? get tipoNoticiaId => getField<int>('tipoNoticia_id');
  set tipoNoticiaId(int? value) => setField<int>('tipoNoticia_id', value);
}
