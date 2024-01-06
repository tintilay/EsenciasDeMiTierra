import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PersonaInfoRecord extends FirestoreRecord {
  PersonaInfoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombres" field.
  String? _nombres;
  String get nombres => _nombres ?? '';
  bool hasNombres() => _nombres != null;

  // "apellidos" field.
  String? _apellidos;
  String get apellidos => _apellidos ?? '';
  bool hasApellidos() => _apellidos != null;

  // "contacto" field.
  String? _contacto;
  String get contacto => _contacto ?? '';
  bool hasContacto() => _contacto != null;

  // "departamento" field.
  String? _departamento;
  String get departamento => _departamento ?? '';
  bool hasDepartamento() => _departamento != null;

  // "cargo" field.
  String? _cargo;
  String get cargo => _cargo ?? '';
  bool hasCargo() => _cargo != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nombres = snapshotData['nombres'] as String?;
    _apellidos = snapshotData['apellidos'] as String?;
    _contacto = snapshotData['contacto'] as String?;
    _departamento = snapshotData['departamento'] as String?;
    _cargo = snapshotData['cargo'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('personaInfo')
          : FirebaseFirestore.instance.collectionGroup('personaInfo');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('personaInfo').doc();

  static Stream<PersonaInfoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PersonaInfoRecord.fromSnapshot(s));

  static Future<PersonaInfoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PersonaInfoRecord.fromSnapshot(s));

  static PersonaInfoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PersonaInfoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PersonaInfoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PersonaInfoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PersonaInfoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PersonaInfoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPersonaInfoRecordData({
  String? nombres,
  String? apellidos,
  String? contacto,
  String? departamento,
  String? cargo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombres': nombres,
      'apellidos': apellidos,
      'contacto': contacto,
      'departamento': departamento,
      'cargo': cargo,
    }.withoutNulls,
  );

  return firestoreData;
}

class PersonaInfoRecordDocumentEquality implements Equality<PersonaInfoRecord> {
  const PersonaInfoRecordDocumentEquality();

  @override
  bool equals(PersonaInfoRecord? e1, PersonaInfoRecord? e2) {
    return e1?.nombres == e2?.nombres &&
        e1?.apellidos == e2?.apellidos &&
        e1?.contacto == e2?.contacto &&
        e1?.departamento == e2?.departamento &&
        e1?.cargo == e2?.cargo;
  }

  @override
  int hash(PersonaInfoRecord? e) => const ListEquality()
      .hash([e?.nombres, e?.apellidos, e?.contacto, e?.departamento, e?.cargo]);

  @override
  bool isValidKey(Object? o) => o is PersonaInfoRecord;
}
