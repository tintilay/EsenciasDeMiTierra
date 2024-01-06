import '../database.dart';

class VistaconteoobrasTable extends SupabaseTable<VistaconteoobrasRow> {
  @override
  String get tableName => 'vistaconteoobras';

  @override
  VistaconteoobrasRow createRow(Map<String, dynamic> data) =>
      VistaconteoobrasRow(data);
}

class VistaconteoobrasRow extends SupabaseDataRow {
  VistaconteoobrasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VistaconteoobrasTable();

  int? get numerodeobras => getField<int>('numerodeobras');
  set numerodeobras(int? value) => setField<int>('numerodeobras', value);
}
