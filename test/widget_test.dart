// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:spotify_clone/main.dart';

void main() {
  testWidgets('Spotify Clone app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our Spotify clone elements are present.
    expect(find.text('Milhões de músicas à sua escolha.\n Grátis no Spotify'), findsOneWidget);
    expect(find.text('INSCREVA-SE GRÁTIS'), findsOneWidget);
    expect(find.text('ENTRAR'), findsOneWidget);
  });
}
