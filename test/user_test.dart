import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/user.dart';
import 'package:mockito/mockito.dart';

class MockDio extends Mock implements Dio {}

void main() {
  test('Given user with age of 24 When birthday is called Then user is old', () async {
    // ARRANGE
    // This is how you could mock something
    // final mockDio = MockDio();
    // when(mockDio.get(any)).thenAnswer((invocation) => Future.value(Response()));

    final user = User(24, "someName");

    // ACT
    user.birthday();

    // ASSERT
    expect(user.age, 25);
  });
}
