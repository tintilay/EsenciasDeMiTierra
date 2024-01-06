import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NoticiasRecord extends FirestoreRecord {
  NoticiasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "contenido" field.
  String? _contenido;
  String get contenido => _contenido ?? '';
  bool hasContenido() => _contenido != null;

  // "fechaPublicacion" field.
  DateTime? _fechaPublicacion;
  DateTime? get fechaPublicacion => _fechaPublicacion;
  bool hasFechaPublicacion() => _fechaPublicacion != null;

  // "fechaCreacion" field.
  DateTime? _fechaCreacion;
  DateTime? get fechaCreacion => _fechaCreacion;
  bool hasFechaCreacion() => _fechaCreacion != null;

  // "estado" field.
  bool? _estado;
  bool get estado => _estado ?? false;
  bool hasEstado() => _estado != null;

  // "imagenUrl" field.
  String? _imagenUrl;
  String get imagenUrl => _imagenUrl ?? '';
  bool hasImagenUrl() => _imagenUrl != null;

  // "categoria" field.
  List<String>? _categoria;
  List<String> get categoria => _categoria ?? const [];
  bool hasCategoria() => _categoria != null;

  // "enlace" field.
  List<DocumentReference>? _enlace;
  List<DocumentReference> get enlace => _enlace ?? const [];
  bool hasEnlace() => _enlace != null;

  // "autor" field.
  DocumentReference? _autor;
  DocumentReference? get autor => _autor;
  bool hasAutor() => _autor != null;

  void _initializeFields() {
    _titulo = snapshotData['titulo'] as String?;
    _contenido = snapshotData['contenido'] as String?;
    _fechaPublicacion = snapshotData['fechaPublicacion'] as DateTime?;
    _fechaCreacion = snapshotData['fechaCreacion'] as DateTime?;
    _estado = snapshotData['estado'] as bool?;
    _imagenUrl = snapshotData['imagenUrl'] as String?;
    _categoria = getDataList(snapshotData['categoria']);
    _enlace = getDataList(snapshotData['enlace']);
    _autor = snapshotData['autor'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('noticias');

  static Stream<NoticiasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NoticiasRecord.fromSnapshot(s));

  static Future<NoticiasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NoticiasRecord.fromSnapshot(s));

  static NoticiasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NoticiasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NoticiasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NoticiasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NoticiasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NoticiasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNoticiasRecordData({
  String? titulo,
  String? contenido,
  DateTime? fechaPublicacion,
  DateTime? fechaCreacion,
  bool? estado,
  String? imagenUrl,
  DocumentReference? autor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titulo': titulo,
      'contenido': contenido,
      'fechaPublicacion': fechaPublicacion,
      'fechaCreacion': fechaCreacion,
      'estado': estado,
      'imagenUrl': imagenUrl,
      'autor': autor,
    }.withoutNulls,
  );

  return firestoreData;
}

class NoticiasRecordDocumentEquality implements Equality<NoticiasRecord> {
  const NoticiasRecordDocumentEquality();

  @override
  bool equals(NoticiasRecord? e1, NoticiasRecord? e2) {
    const listEquality = ListEquality();
    return e1?.titulo == e2?.titulo &&
        e1?.contenido == e2?.contenido &&
        e1?.fechaPublicacion == e2?.fechaPublicacion &&
        e1?.fechaCreacion == e2?.fechaCreacion &&
        e1?.estado == e2?.estado &&
        e1?.imagenUrl == e2?.imagenUrl &&
        listEquality.equals(e1?.categoria, e2?.categoria) &&
        listEquality.equals(e1?.enlace, e2?.enlace) &&
        e1?.autor == e2?.autor;
  }

  @override
  int hash(NoticiasRecord? e) => const ListEquality().hash([
        e?.titulo,
        e?.contenido,
        e?.fechaPublicacion,
        e?.fechaCreacion,
        e?.estado,
        e?.imagenUrl,
        e?.categoria,
        e?.enlace,
        e?.autor
      ]);

  @override
  bool isValidKey(Object? o) => o is NoticiasRecord;
}
