import '../database.dart';

class VistaconteoestilosTable extends SupabaseTable<VistaconteoestilosRow> {
  @override
  String get tableName => 'vistaconteoestilos';

  @override
  VistaconteoestilosRow createRow(Map<String, dynamic> data) =>
      VistaconteoestilosRow(data);
}

class VistaconteoestilosRow extends SupabaseDataRow {
  VistaconteoestilosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VistaconteoestilosTable();

  int? get numerodeestilos => getField<int>('numerodeestilos');
  set numerodeestilos(int? value) => setField<int>('numerodeestilos', value);
}
