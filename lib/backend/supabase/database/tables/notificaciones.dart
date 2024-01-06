import '../database.dart';

class NotificacionesTable extends SupabaseTable<NotificacionesRow> {
  @override
  String get tableName => 'notificaciones';

  @override
  NotificacionesRow createRow(Map<String, dynamic> data) =>
      NotificacionesRow(data);
}

class NotificacionesRow extends SupabaseDataRow {
  NotificacionesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NotificacionesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get titulo => getField<String>('titulo ');
  set titulo(String? value) => setField<String>('titulo ', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  String? get imagen => getField<String>('imagen');
  set imagen(String? value) => setField<String>('imagen', value);
}
