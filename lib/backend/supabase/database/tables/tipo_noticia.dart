import '../database.dart';

class TipoNoticiaTable extends SupabaseTable<TipoNoticiaRow> {
  @override
  String get tableName => 'tipoNoticia';

  @override
  TipoNoticiaRow createRow(Map<String, dynamic> data) => TipoNoticiaRow(data);
}

class TipoNoticiaRow extends SupabaseDataRow {
  TipoNoticiaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TipoNoticiaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get fCreacion => getField<DateTime>('f_creacion')!;
  set fCreacion(DateTime value) => setField<DateTime>('f_creacion', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  String? get descripcion => getField<String>('descripción ');
  set descripcion(String? value) => setField<String>('descripción ', value);
}
