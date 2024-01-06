import '../database.dart';

class PerfilArtistaTable extends SupabaseTable<PerfilArtistaRow> {
  @override
  String get tableName => 'perfilArtista';

  @override
  PerfilArtistaRow createRow(Map<String, dynamic> data) =>
      PerfilArtistaRow(data);
}

class PerfilArtistaRow extends SupabaseDataRow {
  PerfilArtistaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PerfilArtistaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get fCreacion => getField<DateTime>('f_creacion')!;
  set fCreacion(DateTime value) => setField<DateTime>('f_creacion', value);

  String? get seudonimo => getField<String>('seudonimo ');
  set seudonimo(String? value) => setField<String>('seudonimo ', value);

  DateTime? get fNacimiento => getField<DateTime>('f_nacimiento');
  set fNacimiento(DateTime? value) => setField<DateTime>('f_nacimiento', value);

  String? get usuarioId => getField<String>('usuario_id');
  set usuarioId(String? value) => setField<String>('usuario_id', value);

  DateTime? get fActualizacion => getField<DateTime>('f_actualizacion');
  set fActualizacion(DateTime? value) =>
      setField<DateTime>('f_actualizacion', value);

  String? get biografia => getField<String>('biografia');
  set biografia(String? value) => setField<String>('biografia', value);

  DateTime? get fInicio => getField<DateTime>('f_inicio');
  set fInicio(DateTime? value) => setField<DateTime>('f_inicio', value);

  bool? get estado => getField<bool>('estado');
  set estado(bool? value) => setField<bool>('estado', value);

  double? get contacto => getField<double>('contacto');
  set contacto(double? value) => setField<double>('contacto', value);

  int? get disciplinaId => getField<int>('disciplina_id');
  set disciplinaId(int? value) => setField<int>('disciplina_id', value);
}
