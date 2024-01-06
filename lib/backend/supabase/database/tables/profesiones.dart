import '../database.dart';

class ProfesionesTable extends SupabaseTable<ProfesionesRow> {
  @override
  String get tableName => 'profesiones';

  @override
  ProfesionesRow createRow(Map<String, dynamic> data) => ProfesionesRow(data);
}

class ProfesionesRow extends SupabaseDataRow {
  ProfesionesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProfesionesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  bool? get estado => getField<bool>('estado');
  set estado(bool? value) => setField<bool>('estado', value);
}
