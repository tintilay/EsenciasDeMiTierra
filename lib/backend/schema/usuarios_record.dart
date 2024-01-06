import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuariosRecord extends FirestoreRecord {
  UsuariosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "proveedorAuth" field.
  String? _proveedorAuth;
  String get proveedorAuth => _proveedorAuth ?? '';
  bool hasProveedorAuth() => _proveedorAuth != null;

  // "rolUsuario" field.
  List<DocumentReference>? _rolUsuario;
  List<DocumentReference> get rolUsuario => _rolUsuario ?? const [];
  bool hasRolUsuario() => _rolUsuario != null;

  // "esArtista" field.
  bool? _esArtista;
  bool get esArtista => _esArtista ?? false;
  bool hasEsArtista() => _esArtista != null;

  // "esInvitado" field.
  bool? _esInvitado;
  bool get esInvitado => _esInvitado ?? false;
  bool hasEsInvitado() => _esInvitado != null;

  // "esGrupoArtista" field.
  bool? _esGrupoArtista;
  bool get esGrupoArtista => _esGrupoArtista ?? false;
  bool hasEsGrupoArtista() => _esGrupoArtista != null;

  // "artista" field.
  DocumentReference? _artista;
  DocumentReference? get artista => _artista;
  bool hasArtista() => _artista != null;

  // "grupoArtistas" field.
  List<DocumentReference>? _grupoArtistas;
  List<DocumentReference> get grupoArtistas => _grupoArtistas ?? const [];
  bool hasGrupoArtistas() => _grupoArtistas != null;

  // "biografiaGrupoArtista" field.
  String? _biografiaGrupoArtista;
  String get biografiaGrupoArtista => _biografiaGrupoArtista ?? '';
  bool hasBiografiaGrupoArtista() => _biografiaGrupoArtista != null;

  // "estado" field.
  bool? _estado;
  bool get estado => _estado ?? false;
  bool hasEstado() => _estado != null;

  // "nombres" field.
  DocumentReference? _nombres;
  DocumentReference? get nombres => _nombres;
  bool hasNombres() => _nombres != null;

  // "fechaCreado" field.
  DateTime? _fechaCreado;
  DateTime? get fechaCreado => _fechaCreado;
  bool hasFechaCreado() => _fechaCreado != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "esAdmin" field.
  bool? _esAdmin;
  bool get esAdmin => _esAdmin ?? false;
  bool hasEsAdmin() => _esAdmin != null;

  // "imagenUrl" field.
  DocumentReference? _imagenUrl;
  DocumentReference? get imagenUrl => _imagenUrl;
  bool hasImagenUrl() => _imagenUrl != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _proveedorAuth = snapshotData['proveedorAuth'] as String?;
    _rolUsuario = getDataList(snapshotData['rolUsuario']);
    _esArtista = snapshotData['esArtista'] as bool?;
    _esInvitado = snapshotData['esInvitado'] as bool?;
    _esGrupoArtista = snapshotData['esGrupoArtista'] as bool?;
    _artista = snapshotData['artista'] as DocumentReference?;
    _grupoArtistas = getDataList(snapshotData['grupoArtistas']);
    _biografiaGrupoArtista = snapshotData['biografiaGrupoArtista'] as String?;
    _estado = snapshotData['estado'] as bool?;
    _nombres = snapshotData['nombres'] as DocumentReference?;
    _fechaCreado = snapshotData['fechaCreado'] as DateTime?;
    _displayName = snapshotData['display_name'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _esAdmin = snapshotData['esAdmin'] as bool?;
    _imagenUrl = snapshotData['imagenUrl'] as DocumentReference?;
    _photoUrl = snapshotData['photo_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usuarios');

  static Stream<UsuariosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsuariosRecord.fromSnapshot(s));

  static Future<UsuariosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsuariosRecord.fromSnapshot(s));

  static UsuariosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsuariosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsuariosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsuariosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsuariosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsuariosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsuariosRecordData({
  String? email,
  String? proveedorAuth,
  bool? esArtista,
  bool? esInvitado,
  bool? esGrupoArtista,
  DocumentReference? artista,
  String? biografiaGrupoArtista,
  bool? estado,
  DocumentReference? nombres,
  DateTime? fechaCreado,
  String? displayName,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  bool? esAdmin,
  DocumentReference? imagenUrl,
  String? photoUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'proveedorAuth': proveedorAuth,
      'esArtista': esArtista,
      'esInvitado': esInvitado,
      'esGrupoArtista': esGrupoArtista,
      'artista': artista,
      'biografiaGrupoArtista': biografiaGrupoArtista,
      'estado': estado,
      'nombres': nombres,
      'fechaCreado': fechaCreado,
      'display_name': displayName,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'esAdmin': esAdmin,
      'imagenUrl': imagenUrl,
      'photo_url': photoUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsuariosRecordDocumentEquality implements Equality<UsuariosRecord> {
  const UsuariosRecordDocumentEquality();

  @override
  bool equals(UsuariosRecord? e1, UsuariosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.proveedorAuth == e2?.proveedorAuth &&
        listEquality.equals(e1?.rolUsuario, e2?.rolUsuario) &&
        e1?.esArtista == e2?.esArtista &&
        e1?.esInvitado == e2?.esInvitado &&
        e1?.esGrupoArtista == e2?.esGrupoArtista &&
        e1?.artista == e2?.artista &&
        listEquality.equals(e1?.grupoArtistas, e2?.grupoArtistas) &&
        e1?.biografiaGrupoArtista == e2?.biografiaGrupoArtista &&
        e1?.estado == e2?.estado &&
        e1?.nombres == e2?.nombres &&
        e1?.fechaCreado == e2?.fechaCreado &&
        e1?.displayName == e2?.displayName &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.esAdmin == e2?.esAdmin &&
        e1?.imagenUrl == e2?.imagenUrl &&
        e1?.photoUrl == e2?.photoUrl;
  }

  @override
  int hash(UsuariosRecord? e) => const ListEquality().hash([
        e?.email,
        e?.proveedorAuth,
        e?.rolUsuario,
        e?.esArtista,
        e?.esInvitado,
        e?.esGrupoArtista,
        e?.artista,
        e?.grupoArtistas,
        e?.biografiaGrupoArtista,
        e?.estado,
        e?.nombres,
        e?.fechaCreado,
        e?.displayName,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.esAdmin,
        e?.imagenUrl,
        e?.photoUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is UsuariosRecord;
}
