import '../database.dart';

class TipoRecursoEducativoTable extends SupabaseTable<TipoRecursoEducativoRow> {
  @override
  String get tableName => 'tipo_recursoEducativo';

  @override
  TipoRecursoEducativoRow createRow(Map<String, dynamic> data) =>
      TipoRecursoEducativoRow(data);
}

class TipoRecursoEducativoRow extends SupabaseDataRow {
  TipoRecursoEducativoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TipoRecursoEducativoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get fCreacion => getField<DateTime>('f_creacion')!;
  set fCreacion(DateTime value) => setField<DateTime>('f_creacion', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  bool? get estado => getField<bool>('estado');
  set estado(bool? value) => setField<bool>('estado', value);
}
