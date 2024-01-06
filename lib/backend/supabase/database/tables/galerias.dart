import '../database.dart';

class GaleriasTable extends SupabaseTable<GaleriasRow> {
  @override
  String get tableName => 'galerias';

  @override
  GaleriasRow createRow(Map<String, dynamic> data) => GaleriasRow(data);
}

class GaleriasRow extends SupabaseDataRow {
  GaleriasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GaleriasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get fCreacion => getField<DateTime>('f_creacion');
  set fCreacion(DateTime? value) => setField<DateTime>('f_creacion', value);

  DateTime? get fActualizacion => getField<DateTime>('f_actualizacion');
  set fActualizacion(DateTime? value) =>
      setField<DateTime>('f_actualizacion', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  bool? get estado => getField<bool>('estado');
  set estado(bool? value) => setField<bool>('estado', value);

  String? get urlImagen => getField<String>('url_imagen');
  set urlImagen(String? value) => setField<String>('url_imagen', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  String? get ubicacion => getField<String>('ubicacion');
  set ubicacion(String? value) => setField<String>('ubicacion', value);

  int? get disciplinaId => getField<int>('disciplina_id');
  set disciplinaId(int? value) => setField<int>('disciplina_id', value);
}
