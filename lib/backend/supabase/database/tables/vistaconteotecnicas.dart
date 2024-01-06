import '../database.dart';

class VistaconteotecnicasTable extends SupabaseTable<VistaconteotecnicasRow> {
  @override
  String get tableName => 'vistaconteotecnicas';

  @override
  VistaconteotecnicasRow createRow(Map<String, dynamic> data) =>
      VistaconteotecnicasRow(data);
}

class VistaconteotecnicasRow extends SupabaseDataRow {
  VistaconteotecnicasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VistaconteotecnicasTable();

  int? get numerodetecnicas => getField<int>('numerodetecnicas');
  set numerodetecnicas(int? value) => setField<int>('numerodetecnicas', value);
}
