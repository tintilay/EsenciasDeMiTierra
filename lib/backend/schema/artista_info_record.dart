import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ArtistaInfoRecord extends FirestoreRecord {
  ArtistaInfoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "estilo" field.
  List<String>? _estilo;
  List<String> get estilo => _estilo ?? const [];
  bool hasEstilo() => _estilo != null;

  // "biografia" field.
  String? _biografia;
  String get biografia => _biografia ?? '';
  bool hasBiografia() => _biografia != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _estilo = getDataList(snapshotData['estilo']);
    _biografia = snapshotData['biografia'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('artistaInfo')
          : FirebaseFirestore.instance.collectionGroup('artistaInfo');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('artistaInfo').doc();

  static Stream<ArtistaInfoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ArtistaInfoRecord.fromSnapshot(s));

  static Future<ArtistaInfoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ArtistaInfoRecord.fromSnapshot(s));

  static ArtistaInfoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ArtistaInfoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ArtistaInfoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ArtistaInfoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ArtistaInfoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ArtistaInfoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createArtistaInfoRecordData({
  String? biografia,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'biografia': biografia,
    }.withoutNulls,
  );

  return firestoreData;
}

class ArtistaInfoRecordDocumentEquality implements Equality<ArtistaInfoRecord> {
  const ArtistaInfoRecordDocumentEquality();

  @override
  bool equals(ArtistaInfoRecord? e1, ArtistaInfoRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.estilo, e2?.estilo) &&
        e1?.biografia == e2?.biografia;
  }

  @override
  int hash(ArtistaInfoRecord? e) =>
      const ListEquality().hash([e?.estilo, e?.biografia]);

  @override
  bool isValidKey(Object? o) => o is ArtistaInfoRecord;
}
