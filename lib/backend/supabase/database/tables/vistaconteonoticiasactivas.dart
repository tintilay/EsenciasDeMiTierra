import '../database.dart';

class VistaconteonoticiasactivasTable
    extends SupabaseTable<VistaconteonoticiasactivasRow> {
  @override
  String get tableName => 'vistaconteonoticiasactivas';

  @override
  VistaconteonoticiasactivasRow createRow(Map<String, dynamic> data) =>
      VistaconteonoticiasactivasRow(data);
}

class VistaconteonoticiasactivasRow extends SupabaseDataRow {
  VistaconteonoticiasactivasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VistaconteonoticiasactivasTable();

  int? get numerodenoticiasactivas => getField<int>('numerodenoticiasactivas');
  set numerodenoticiasactivas(int? value) =>
      setField<int>('numerodenoticiasactivas', value);
}
