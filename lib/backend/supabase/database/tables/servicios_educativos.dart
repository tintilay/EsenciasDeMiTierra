import '../database.dart';

class ServiciosEducativosTable extends SupabaseTable<ServiciosEducativosRow> {
  @override
  String get tableName => 'serviciosEducativos';

  @override
  ServiciosEducativosRow createRow(Map<String, dynamic> data) =>
      ServiciosEducativosRow(data);
}

class ServiciosEducativosRow extends SupabaseDataRow {
  ServiciosEducativosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ServiciosEducativosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get fCreacion => getField<DateTime>('f_creacion')!;
  set fCreacion(DateTime value) => setField<DateTime>('f_creacion', value);

  DateTime? get fActualizacion => getField<DateTime>('f_actualizacion');
  set fActualizacion(DateTime? value) =>
      setField<DateTime>('f_actualizacion', value);

  String? get tipoServicio => getField<String>('tipoServicio');
  set tipoServicio(String? value) => setField<String>('tipoServicio', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  double? get costo => getField<double>('costo');
  set costo(double? value) => setField<double>('costo', value);

  String? get modalidad => getField<String>('modalidad');
  set modalidad(String? value) => setField<String>('modalidad', value);

  bool? get estado => getField<bool>('estado');
  set estado(bool? value) => setField<bool>('estado', value);

  String? get usuarioId => getField<String>('usuario_id');
  set usuarioId(String? value) => setField<String>('usuario_id', value);
}
