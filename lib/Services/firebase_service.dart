import 'package:firebase_core/firebase_core.dart';

class FirebaseService {
  Future<void> initializeDefault() async {
    FirebaseApp app = await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDGou0tszkqzq5RaDLFZ1chbfQx4ThRpWY",
            appId: "1:326583643343:android:5f061d2f5326ec6d5d5bba",
            messagingSenderId: "326583643343",
            projectId: "blinkit-26b18"));
    print('Initialized default app $app');
  }
}
