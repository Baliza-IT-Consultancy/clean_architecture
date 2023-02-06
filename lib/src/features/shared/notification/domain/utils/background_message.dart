import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

/// handles fcm message in background
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services
  //in the background, such as Firestore,
  // make sure you call `initializeApp`
  //before using other Firebase services.
  await Firebase.initializeApp(
    // TODO: update the config if any
    // options: DefaultFirebaseConfig.currentPlatform,
  );
}
