import '../database.dart';

class VistaconteodisciplinasTable
    extends SupabaseTable<VistaconteodisciplinasRow> {
  @override
  String get tableName => 'vistaconteodisciplinas';

  @override
  VistaconteodisciplinasRow createRow(Map<String, dynamic> data) =>
      VistaconteodisciplinasRow(data);
}

class VistaconteodisciplinasRow extends SupabaseDataRow {
  VistaconteodisciplinasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VistaconteodisciplinasTable();

  int? get numerodedisciplinas => getField<int>('numerodedisciplinas');
  set numerodedisciplinas(int? value) =>
      setField<int>('numerodedisciplinas', value);
}
