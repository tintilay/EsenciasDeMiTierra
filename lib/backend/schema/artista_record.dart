import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ArtistaRecord extends FirestoreRecord {
  ArtistaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "seudonimo" field.
  String? _seudonimo;
  String get seudonimo => _seudonimo ?? '';
  bool hasSeudonimo() => _seudonimo != null;

  // "nombres" field.
  String? _nombres;
  String get nombres => _nombres ?? '';
  bool hasNombres() => _nombres != null;

  // "apellidos" field.
  String? _apellidos;
  String get apellidos => _apellidos ?? '';
  bool hasApellidos() => _apellidos != null;

  // "imagenUrl" field.
  String? _imagenUrl;
  String get imagenUrl => _imagenUrl ?? '';
  bool hasImagenUrl() => _imagenUrl != null;

  // "estilo" field.
  List<String>? _estilo;
  List<String> get estilo => _estilo ?? const [];
  bool hasEstilo() => _estilo != null;

  // "biografia" field.
  String? _biografia;
  String get biografia => _biografia ?? '';
  bool hasBiografia() => _biografia != null;

  // "contacto" field.
  List<String>? _contacto;
  List<String> get contacto => _contacto ?? const [];
  bool hasContacto() => _contacto != null;

  // "web" field.
  String? _web;
  String get web => _web ?? '';
  bool hasWeb() => _web != null;

  // "facebook" field.
  String? _facebook;
  String get facebook => _facebook ?? '';
  bool hasFacebook() => _facebook != null;

  // "instagram" field.
  String? _instagram;
  String get instagram => _instagram ?? '';
  bool hasInstagram() => _instagram != null;

  // "youtube" field.
  String? _youtube;
  String get youtube => _youtube ?? '';
  bool hasYoutube() => _youtube != null;

  // "soundcloud" field.
  String? _soundcloud;
  String get soundcloud => _soundcloud ?? '';
  bool hasSoundcloud() => _soundcloud != null;

  // "spotify" field.
  String? _spotify;
  String get spotify => _spotify ?? '';
  bool hasSpotify() => _spotify != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _seudonimo = snapshotData['seudonimo'] as String?;
    _nombres = snapshotData['nombres'] as String?;
    _apellidos = snapshotData['apellidos'] as String?;
    _imagenUrl = snapshotData['imagenUrl'] as String?;
    _estilo = getDataList(snapshotData['estilo']);
    _biografia = snapshotData['biografia'] as String?;
    _contacto = getDataList(snapshotData['contacto']);
    _web = snapshotData['web'] as String?;
    _facebook = snapshotData['facebook'] as String?;
    _instagram = snapshotData['instagram'] as String?;
    _youtube = snapshotData['youtube'] as String?;
    _soundcloud = snapshotData['soundcloud'] as String?;
    _spotify = snapshotData['spotify'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('artista')
          : FirebaseFirestore.instance.collectionGroup('artista');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('artista').doc();

  static Stream<ArtistaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ArtistaRecord.fromSnapshot(s));

  static Future<ArtistaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ArtistaRecord.fromSnapshot(s));

  static ArtistaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ArtistaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ArtistaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ArtistaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ArtistaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ArtistaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createArtistaRecordData({
  String? seudonimo,
  String? nombres,
  String? apellidos,
  String? imagenUrl,
  String? biografia,
  String? web,
  String? facebook,
  String? instagram,
  String? youtube,
  String? soundcloud,
  String? spotify,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'seudonimo': seudonimo,
      'nombres': nombres,
      'apellidos': apellidos,
      'imagenUrl': imagenUrl,
      'biografia': biografia,
      'web': web,
      'facebook': facebook,
      'instagram': instagram,
      'youtube': youtube,
      'soundcloud': soundcloud,
      'spotify': spotify,
    }.withoutNulls,
  );

  return firestoreData;
}

class ArtistaRecordDocumentEquality implements Equality<ArtistaRecord> {
  const ArtistaRecordDocumentEquality();

  @override
  bool equals(ArtistaRecord? e1, ArtistaRecord? e2) {
    const listEquality = ListEquality();
    return e1?.seudonimo == e2?.seudonimo &&
        e1?.nombres == e2?.nombres &&
        e1?.apellidos == e2?.apellidos &&
        e1?.imagenUrl == e2?.imagenUrl &&
        listEquality.equals(e1?.estilo, e2?.estilo) &&
        e1?.biografia == e2?.biografia &&
        listEquality.equals(e1?.contacto, e2?.contacto) &&
        e1?.web == e2?.web &&
        e1?.facebook == e2?.facebook &&
        e1?.instagram == e2?.instagram &&
        e1?.youtube == e2?.youtube &&
        e1?.soundcloud == e2?.soundcloud &&
        e1?.spotify == e2?.spotify;
  }

  @override
  int hash(ArtistaRecord? e) => const ListEquality().hash([
        e?.seudonimo,
        e?.nombres,
        e?.apellidos,
        e?.imagenUrl,
        e?.estilo,
        e?.biografia,
        e?.contacto,
        e?.web,
        e?.facebook,
        e?.instagram,
        e?.youtube,
        e?.soundcloud,
        e?.spotify
      ]);

  @override
  bool isValidKey(Object? o) => o is ArtistaRecord;
}
