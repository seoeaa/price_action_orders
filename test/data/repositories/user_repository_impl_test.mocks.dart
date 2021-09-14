// Mocks generated by Mockito 5.0.15 from annotations
// in price_action_orders/test/data/repositories/user_repository_impl_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i6;

import 'package:mockito/mockito.dart' as _i1;
import 'package:price_action_orders/core/globals/enums.dart' as _i8;
import 'package:price_action_orders/data/datasources/user_datasource.dart'
    as _i5;
import 'package:price_action_orders/domain/entities/api_access.dart' as _i4;
import 'package:price_action_orders/domain/entities/order.dart' as _i7;
import 'package:price_action_orders/domain/entities/ticker.dart' as _i3;
import 'package:price_action_orders/domain/entities/userdata.dart' as _i2;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeUserData_0 extends _i1.Fake implements _i2.UserData {}

class _FakeTicker_1 extends _i1.Fake implements _i3.Ticker {}

class _FakeApiAccess_2 extends _i1.Fake implements _i4.ApiAccess {}

/// A class which mocks [UserDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserDataSource extends _i1.Mock implements _i5.UserDataSource {
  MockUserDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i2.UserData> getAccountInfo() =>
      (super.noSuchMethod(Invocation.method(#getAccountInfo, []),
              returnValue: Future<_i2.UserData>.value(_FakeUserData_0()))
          as _i6.Future<_i2.UserData>);
  @override
  _i6.Future<List<_i7.Order>> getOpenOrders() =>
      (super.noSuchMethod(Invocation.method(#getOpenOrders, []),
              returnValue: Future<List<_i7.Order>>.value(<_i7.Order>[]))
          as _i6.Future<List<_i7.Order>>);
  @override
  _i6.Future<_i6.Stream<dynamic>> getUserDataStream() =>
      (super.noSuchMethod(Invocation.method(#getUserDataStream, []),
              returnValue:
                  Future<_i6.Stream<dynamic>>.value(Stream<dynamic>.empty()))
          as _i6.Future<_i6.Stream<dynamic>>);
  @override
  _i6.Future<void> cacheLastTicker(_i3.Ticker? ticker) =>
      (super.noSuchMethod(Invocation.method(#cacheLastTicker, [ticker]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i6.Future<void>);
  @override
  _i6.Future<_i3.Ticker> getLastTicker() =>
      (super.noSuchMethod(Invocation.method(#getLastTicker, []),
              returnValue: Future<_i3.Ticker>.value(_FakeTicker_1()))
          as _i6.Future<_i3.Ticker>);
  @override
  _i6.Future<Null?> checkAccountStatus(
          _i8.AppMode? mode, String? key, String? secret) =>
      (super.noSuchMethod(
          Invocation.method(#checkAccountStatus, [mode, key, secret]),
          returnValue: Future<Null?>.value()) as _i6.Future<Null?>);
  @override
  _i6.Future<Null?> storeApiAccess(
          _i8.AppMode? mode, _i4.ApiAccess? apiAccess) =>
      (super.noSuchMethod(Invocation.method(#storeApiAccess, [mode, apiAccess]),
          returnValue: Future<Null?>.value()) as _i6.Future<Null?>);
  @override
  _i6.Future<_i4.ApiAccess> getApiAccess(_i8.AppMode? mode) =>
      (super.noSuchMethod(Invocation.method(#getApiAccess, [mode]),
              returnValue: Future<_i4.ApiAccess>.value(_FakeApiAccess_2()))
          as _i6.Future<_i4.ApiAccess>);
  @override
  _i6.Future<Null?> clearApiAccess(_i8.AppMode? mode) =>
      (super.noSuchMethod(Invocation.method(#clearApiAccess, [mode]),
          returnValue: Future<Null?>.value()) as _i6.Future<Null?>);
  @override
  String toString() => super.toString();
}
