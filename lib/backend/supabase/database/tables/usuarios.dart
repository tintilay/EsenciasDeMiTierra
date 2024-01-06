import '../database.dart';

class UsuariosTable extends SupabaseTable<UsuariosRow> {
  @override
  String get tableName => 'usuarios';

  @override
  UsuariosRow createRow(Map<String, dynamic> data) => UsuariosRow(data);
}

class UsuariosRow extends SupabaseDataRow {
  UsuariosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsuariosTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime? get fCreacion => getField<DateTime>('f_creacion');
  set fCreacion(DateTime? value) => setField<DateTime>('f_creacion', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get contrasena => getField<String>('contrasena');
  set contrasena(String? value) => setField<String>('contrasena', value);

  bool? get estado => getField<bool>('estado');
  set estado(bool? value) => setField<bool>('estado', value);

  DateTime? get fActualizacion => getField<DateTime>('f_actualizacion');
  set fActualizacion(DateTime? value) =>
      setField<DateTime>('f_actualizacion', value);

  String? get urlPerfil => getField<String>('url_perfil');
  set urlPerfil(String? value) => setField<String>('url_perfil', value);

  String? get nombres => getField<String>('nombres');
  set nombres(String? value) => setField<String>('nombres', value);

  String? get apellidos => getField<String>('apellidos');
  set apellidos(String? value) => setField<String>('apellidos', value);

  bool? get esAdmin => getField<bool>('es_Admin');
  set esAdmin(bool? value) => setField<bool>('es_Admin', value);

  bool? get esVisitante => getField<bool>('es_Visitante');
  set esVisitante(bool? value) => setField<bool>('es_Visitante', value);

  bool? get esArtista => getField<bool>('es_Artista');
  set esArtista(bool? value) => setField<bool>('es_Artista', value);
}
