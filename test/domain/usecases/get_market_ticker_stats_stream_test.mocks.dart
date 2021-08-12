// Mocks generated by Mockito 5.0.10 from annotations
// in price_action_orders/test/domain/usecases/get_market_ticker_stats_stream_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:price_action_orders/core/error/failures.dart' as _i5;
import 'package:price_action_orders/domain/entities/bookticker.dart' as _i6;
import 'package:price_action_orders/domain/entities/exchange_info.dart' as _i9;
import 'package:price_action_orders/domain/entities/ticker.dart' as _i7;
import 'package:price_action_orders/domain/entities/ticker_stats.dart' as _i8;
import 'package:price_action_orders/domain/repositories/market_respository.dart'
    as _i3;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeEither<L, R> extends _i1.Fake implements _i2.Either<L, R> {
  @override
  String toString() => super.toString();
}

/// A class which mocks [MarketRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockMarketRepository extends _i1.Mock implements _i3.MarketRepository {
  MockMarketRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.Failure, _i4.Stream<_i6.BookTicker>>>
      getBookTickerStream(_i7.Ticker? ticker) => (super.noSuchMethod(
          Invocation.method(#getBookTickerStream, [ticker]),
          returnValue: Future<
                  _i2.Either<_i5.Failure, _i4.Stream<_i6.BookTicker>>>.value(
              _FakeEither<_i5.Failure, _i4.Stream<_i6.BookTicker>>())) as _i4
          .Future<_i2.Either<_i5.Failure, _i4.Stream<_i6.BookTicker>>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i4.Stream<_i8.TickerStats>>>
      getTickerStatsStream(_i7.Ticker? ticker) => (super.noSuchMethod(
          Invocation.method(#getTickerStatsStream, [ticker]),
          returnValue: Future<
                  _i2.Either<_i5.Failure, _i4.Stream<_i8.TickerStats>>>.value(
              _FakeEither<_i5.Failure, _i4.Stream<_i8.TickerStats>>())) as _i4
          .Future<_i2.Either<_i5.Failure, _i4.Stream<_i8.TickerStats>>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i9.ExchangeInfo>> getExchangeInfo() =>
      (super.noSuchMethod(Invocation.method(#getExchangeInfo, []),
          returnValue: Future<_i2.Either<_i5.Failure, _i9.ExchangeInfo>>.value(
              _FakeEither<_i5.Failure, _i9.ExchangeInfo>())) as _i4
          .Future<_i2.Either<_i5.Failure, _i9.ExchangeInfo>>);
}
