import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImagenesRecord extends FirestoreRecord {
  ImagenesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "imagenUrl" field.
  String? _imagenUrl;
  String get imagenUrl => _imagenUrl ?? '';
  bool hasImagenUrl() => _imagenUrl != null;

  void _initializeFields() {
    _imagenUrl = snapshotData['imagenUrl'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('imagenes');

  static Stream<ImagenesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ImagenesRecord.fromSnapshot(s));

  static Future<ImagenesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ImagenesRecord.fromSnapshot(s));

  static ImagenesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ImagenesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ImagenesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ImagenesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ImagenesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ImagenesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createImagenesRecordData({
  String? imagenUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'imagenUrl': imagenUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class ImagenesRecordDocumentEquality implements Equality<ImagenesRecord> {
  const ImagenesRecordDocumentEquality();

  @override
  bool equals(ImagenesRecord? e1, ImagenesRecord? e2) {
    return e1?.imagenUrl == e2?.imagenUrl;
  }

  @override
  int hash(ImagenesRecord? e) => const ListEquality().hash([e?.imagenUrl]);

  @override
  bool isValidKey(Object? o) => o is ImagenesRecord;
}
