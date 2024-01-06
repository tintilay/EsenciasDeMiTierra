import '../database.dart';

class VistaconteomaterialesTable
    extends SupabaseTable<VistaconteomaterialesRow> {
  @override
  String get tableName => 'vistaconteomateriales';

  @override
  VistaconteomaterialesRow createRow(Map<String, dynamic> data) =>
      VistaconteomaterialesRow(data);
}

class VistaconteomaterialesRow extends SupabaseDataRow {
  VistaconteomaterialesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VistaconteomaterialesTable();

  int? get numerodemateriales => getField<int>('numerodemateriales');
  set numerodemateriales(int? value) =>
      setField<int>('numerodemateriales', value);
}
