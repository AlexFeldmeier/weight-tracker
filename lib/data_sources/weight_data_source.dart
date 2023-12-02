import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class WeightDataSource {
  final FirebaseFirestore _firestore;

  WeightDataSource(this._firestore);

  Stream<List<Map<String, dynamic>>?> getWeights() {
    return _firestore.collection('weights').orderBy('timestamp').snapshots().map((snapshot) {
      try {
        return snapshot.docs.map((doc) => doc.data()).toList();
      } catch (e) {
        if (kDebugMode) {
          print(e);
        }
      }
      return null;
    });
  }

  Future<void> updateWeight(String id, Map<String, dynamic> data) async {
    try {
      await _firestore.collection('weights').doc(id).set(data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  Future<void> deleteWeight(String id) async {
    try {
      await _firestore.collection('weights').doc(id).delete();
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
