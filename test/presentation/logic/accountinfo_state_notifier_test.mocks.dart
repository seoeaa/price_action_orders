// Mocks generated by Mockito 5.0.10 from annotations
// in price_action_orders/test/presentation/logic/accountinfo_state_notifier_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;

import 'package:dartz/dartz.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:price_action_orders/core/error/failures.dart' as _i6;
import 'package:price_action_orders/core/usecases/usecase.dart' as _i8;
import 'package:price_action_orders/domain/entities/userdata.dart' as _i7;
import 'package:price_action_orders/domain/repositories/user_repository.dart'
    as _i2;
import 'package:price_action_orders/domain/usecases/user_get_accountinfo_uc.dart'
    as _i4;
import 'package:price_action_orders/presentation/logic/userdata_stream.dart'
    as _i9;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeUserRepository extends _i1.Fake implements _i2.UserRepository {}

class _FakeEither<L, R> extends _i1.Fake implements _i3.Either<L, R> {
  @override
  String toString() => super.toString();
}

/// A class which mocks [GetAccountInfo].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetAccountInfo extends _i1.Mock implements _i4.GetAccountInfo {
  MockGetAccountInfo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.UserRepository get repository =>
      (super.noSuchMethod(Invocation.getter(#repository),
          returnValue: _FakeUserRepository()) as _i2.UserRepository);
  @override
  _i5.Future<_i3.Either<_i6.Failure, _i7.UserData>> call(
          _i8.NoParams? params) =>
      (super.noSuchMethod(Invocation.method(#call, [params]),
              returnValue: Future<_i3.Either<_i6.Failure, _i7.UserData>>.value(
                  _FakeEither<_i6.Failure, _i7.UserData>()))
          as _i5.Future<_i3.Either<_i6.Failure, _i7.UserData>>);
}

/// A class which mocks [UserDataStream].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserDataStream extends _i1.Mock implements _i9.UserDataStream {
  MockUserDataStream() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<void> initialization() =>
      (super.noSuchMethod(Invocation.method(#initialization, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i5.Future<void>);
  @override
  _i5.Stream<dynamic> stream() =>
      (super.noSuchMethod(Invocation.method(#stream, []),
          returnValue: Stream<dynamic>.empty()) as _i5.Stream<dynamic>);
}
