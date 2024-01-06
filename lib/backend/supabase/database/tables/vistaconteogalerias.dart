import '../database.dart';

class VistaconteogaleriasTable extends SupabaseTable<VistaconteogaleriasRow> {
  @override
  String get tableName => 'vistaconteogalerias';

  @override
  VistaconteogaleriasRow createRow(Map<String, dynamic> data) =>
      VistaconteogaleriasRow(data);
}

class VistaconteogaleriasRow extends SupabaseDataRow {
  VistaconteogaleriasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VistaconteogaleriasTable();

  int? get numerodegalerias => getField<int>('numerodegalerias');
  set numerodegalerias(int? value) => setField<int>('numerodegalerias', value);
}
