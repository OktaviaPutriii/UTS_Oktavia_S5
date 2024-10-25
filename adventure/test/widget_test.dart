import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:adventure/main.dart'; // Ensure the package name is correct
import 'package:adventure/home_page.dart'; // Import the page to be tested
import 'package:adventure/login_page.dart'; // Import the LoginPage for testing
import 'package:adventure/main_page.dart'; // Import the MainPage for testing

void main() {
  testWidgets('Navigation test from MainPage to LoginPage and HomePage',
      (WidgetTester tester) async {
    // Start the app
    await tester.pumpWidget(MyApp());

    // Verify we are on the MainPage
    expect(find.text('Selamat Datang di Adventure App!'), findsOneWidget);

    // Tap on the Login button
    await tester.tap(find.text('Login'));
    await tester
        .pumpAndSettle(); // Wait for the navigation animation to complete

    // Verify we are on the LoginPage
    expect(find.text('Login'), findsOneWidget);

    // Enter username and password
    await tester.enterText(find.byType(TextField).first, 'adventure');
    await tester.enterText(find.byType(TextField).last, 'adventure');

    // Tap the login button
    await tester.tap(find.byType(ElevatedButton).first);
    await tester
        .pumpAndSettle(); // Wait for the navigation animation to complete

    // Verify we are on the HomePage
    expect(find.text('Welcome to Adventure App!'), findsOneWidget);

    // Now test the navigation between tabs in HomePage
    // Verify we are on the Home tab
    expect(find.text('Welcome to Adventure App!'), findsOneWidget);

    // Navigate to the Contact tab
    await tester.tap(find.byIcon(Icons.contact_phone));
    await tester.pumpAndSettle(); // Wait for the animation to complete

    // Verify we are on the Contact tab
    expect(find.text('Kontak Kami'), findsOneWidget);
    expect(find.text('support@adventure.com'), findsOneWidget);

    // Navigate to the Products tab
    await tester.tap(find.byIcon(Icons.shopping_bag));
    await tester.pumpAndSettle(); // Wait for the animation to complete

    // Verify we are on the Products tab
    expect(find.text('Produk Peralatan Mendaki'), findsOneWidget);
    expect(find.text('Temukan peralatan mendaki terbaik di sini.'),
        findsOneWidget);

    // Navigate back to the Home tab
    await tester.tap(find.byIcon(Icons.home));
    await tester.pumpAndSettle(); // Wait for the animation to complete

    // Verify we are back on the Home tab
    expect(find.text('Welcome to Adventure App!'), findsOneWidget);
  });
}
