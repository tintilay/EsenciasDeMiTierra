import '../database.dart';

class VistaconteonoticiasTable extends SupabaseTable<VistaconteonoticiasRow> {
  @override
  String get tableName => 'vistaconteonoticias';

  @override
  VistaconteonoticiasRow createRow(Map<String, dynamic> data) =>
      VistaconteonoticiasRow(data);
}

class VistaconteonoticiasRow extends SupabaseDataRow {
  VistaconteonoticiasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VistaconteonoticiasTable();

  int? get numerodenoticias => getField<int>('numerodenoticias');
  set numerodenoticias(int? value) => setField<int>('numerodenoticias', value);
}
