import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportsRecord extends FirestoreRecord {
  ReportsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "location_text" field.
  String? _locationText;
  String get locationText => _locationText ?? '';
  bool hasLocationText() => _locationText != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "date_created" field.
  DateTime? _dateCreated;
  DateTime? get dateCreated => _dateCreated;
  bool hasDateCreated() => _dateCreated != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "latitude" field.
  LatLng? _latitude;
  LatLng? get latitude => _latitude;
  bool hasLatitude() => _latitude != null;

  // "longitude" field.
  LatLng? _longitude;
  LatLng? get longitude => _longitude;
  bool hasLongitude() => _longitude != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _locationText = snapshotData['location_text'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _dateCreated = snapshotData['date_created'] as DateTime?;
    _userId = snapshotData['user_id'] as DocumentReference?;
    _location = snapshotData['location'] as LatLng?;
    _category = snapshotData['category'] as String?;
    _status = snapshotData['status'] as String?;
    _latitude = snapshotData['latitude'] as LatLng?;
    _longitude = snapshotData['longitude'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reports');

  static Stream<ReportsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReportsRecord.fromSnapshot(s));

  static Future<ReportsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReportsRecord.fromSnapshot(s));

  static ReportsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReportsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReportsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReportsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReportsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReportsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReportsRecordData({
  String? title,
  String? description,
  String? locationText,
  String? photoUrl,
  DateTime? dateCreated,
  DocumentReference? userId,
  LatLng? location,
  String? category,
  String? status,
  LatLng? latitude,
  LatLng? longitude,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'location_text': locationText,
      'photo_url': photoUrl,
      'date_created': dateCreated,
      'user_id': userId,
      'location': location,
      'category': category,
      'status': status,
      'latitude': latitude,
      'longitude': longitude,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReportsRecordDocumentEquality implements Equality<ReportsRecord> {
  const ReportsRecordDocumentEquality();

  @override
  bool equals(ReportsRecord? e1, ReportsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.locationText == e2?.locationText &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.dateCreated == e2?.dateCreated &&
        e1?.userId == e2?.userId &&
        e1?.location == e2?.location &&
        e1?.category == e2?.category &&
        e1?.status == e2?.status &&
        e1?.latitude == e2?.latitude &&
        e1?.longitude == e2?.longitude;
  }

  @override
  int hash(ReportsRecord? e) => const ListEquality().hash([
        e?.title,
        e?.description,
        e?.locationText,
        e?.photoUrl,
        e?.dateCreated,
        e?.userId,
        e?.location,
        e?.category,
        e?.status,
        e?.latitude,
        e?.longitude
      ]);

  @override
  bool isValidKey(Object? o) => o is ReportsRecord;
}
