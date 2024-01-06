import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RedesSocialesRecord extends FirestoreRecord {
  RedesSocialesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _url = snapshotData['url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('redesSociales');

  static Stream<RedesSocialesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RedesSocialesRecord.fromSnapshot(s));

  static Future<RedesSocialesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RedesSocialesRecord.fromSnapshot(s));

  static RedesSocialesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RedesSocialesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RedesSocialesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RedesSocialesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RedesSocialesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RedesSocialesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRedesSocialesRecordData({
  String? nombre,
  String? url,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'url': url,
    }.withoutNulls,
  );

  return firestoreData;
}

class RedesSocialesRecordDocumentEquality
    implements Equality<RedesSocialesRecord> {
  const RedesSocialesRecordDocumentEquality();

  @override
  bool equals(RedesSocialesRecord? e1, RedesSocialesRecord? e2) {
    return e1?.nombre == e2?.nombre && e1?.url == e2?.url;
  }

  @override
  int hash(RedesSocialesRecord? e) =>
      const ListEquality().hash([e?.nombre, e?.url]);

  @override
  bool isValidKey(Object? o) => o is RedesSocialesRecord;
}
