import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:price_action_orders/domain/usecases/get_userdata_openorders.dart';
import 'package:price_action_orders/presentation/logic/orders_state_notifier.dart';
import 'package:price_action_orders/presentation/logic/userdata_stream.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/globals/enums.dart';
import 'core/globals/variables.dart';
import 'data/datasources/market_datasource.dart';
import 'data/datasources/trade_datasource.dart';
import 'data/datasources/userdata_datasource.dart';
import 'data/repositories/market_repository_impl.dart';
import 'data/repositories/trade_repository_impl.dart';
import 'data/repositories/userdata_repository_impl.dart';
import 'domain/repositories/market_respository.dart';
import 'domain/repositories/trade_repository.dart';
import 'domain/repositories/userdata_repository.dart';
import 'domain/usecases/get_market_last_ticker.dart';
import 'domain/usecases/get_userdata_accountinfo.dart';
import 'domain/usecases/post_trade_cancel_order.dart';
import 'domain/usecases/post_trade_limit_order.dart';
import 'domain/usecases/post_trade_market_order.dart';
import 'domain/usecases/get_market_bookticker_stream.dart';
import 'domain/usecases/get_userdata_stream.dart';
import 'presentation/logic/bookticker_state_notifier.dart';
import 'presentation/logic/trade_state_notifier.dart';
import 'presentation/logic/orderconfig_state_notifier.dart';
import 'presentation/logic/accountinfo_state_notifier.dart';

SharedPreferences sharedPreferencesInstance;

Future<void> init() async {
  await loadKeys();
  sharedPreferencesInstance = await SharedPreferences.getInstance();
}

Future<void> loadKeys() async {
  final location = appMode == AppMode.PRODUCTION ? 'assets/config-prod.json' : 'assets/config-test.json';
  final jsonStr = await rootBundle.loadString(location);
  final data = jsonDecode(jsonStr);
  apiKey = data['api_key'];
  apiSecret = data['api_secret'];
}

// Logic
final bookTickerNotifierProvider = StateNotifierProvider<BookTickerNotifier, BookTickerState>(
  (ref) => BookTickerNotifier(
    getLastTicker: ref.watch(getLastTickerProvider),
    getBookTickerStream: ref.watch(getBookTickerStream),
    orderConfigNotifier: ref.watch(orderConfigNotifierProvider.notifier),
  ),
);
final tradeNotifierProvider = StateNotifierProvider<TradeNotifier, TradeState>(
  (ref) => TradeNotifier(
    postLimitOrder: ref.watch(postLimitOder),
    postMarketOrder: ref.watch(postMarketOrder),
    postCancelOrder: ref.watch(postCancelOrder),
  ),
);
final orderConfigNotifierProvider = StateNotifierProvider<OrderConfigNotifier, OrderConfigState>((ref) => OrderConfigNotifier());
final accountInfoNotifierProvider = StateNotifierProvider<AccountInfoNotifier, AccountInfoState>(
  (ref) => AccountInfoNotifier(
    getAccountInfo: ref.watch(getAccountInfo),
    userDataStream: ref.watch(userDataStream),
  ),
);
final ordersNotifierProvider = StateNotifierProvider<OrdersNotifier, OrdersState>(
  (ref) => OrdersNotifier(
    getOpenOrders: ref.watch(getOpenOrders),
    userDataStream: ref.watch(userDataStream),
  ),
);
final userDataStream = Provider<UserDataStream>((ref) => UserDataStream(getUserDataStream: ref.watch(getUserDataStream)));

// Use Cases
final getBookTickerStream = Provider<GetBookTickerStream>((ref) => GetBookTickerStream(ref.watch(marketRepositoryProvider)));
final getLastTickerProvider = Provider<GetLastTicker>((ref) => GetLastTicker(ref.watch(marketRepositoryProvider)));
final getAccountInfo = Provider<GetAccountInfo>((ref) => GetAccountInfo(ref.watch(userDataRepositoryProvider)));
final getOpenOrders = Provider<GetOpenOrders>((ref) => GetOpenOrders(ref.watch(userDataRepositoryProvider)));
final getUserDataStream = Provider<GetUserDataStream>((ref) => GetUserDataStream(ref.watch(userDataRepositoryProvider)));
final postLimitOder = Provider<PostLimitOrder>((ref) => PostLimitOrder(ref.watch(tradeRepositoryProvider)));
final postMarketOrder = Provider<PostMarketOrder>((ref) => PostMarketOrder(ref.watch(tradeRepositoryProvider)));
final postCancelOrder = Provider<PostCancelOrder>((ref) => PostCancelOrder(ref.watch(tradeRepositoryProvider)));

// Repositories
final marketRepositoryProvider = Provider<MarketRepository>((ref) => MarketRepositoryImpl(ref.watch(marketDataSourceProvider)));
final tradeRepositoryProvider = Provider<TradeRepository>((ref) => TradeRepositoryImpl(ref.watch(tradeDataSourceProvider)));
final userDataRepositoryProvider = Provider<UserDataRepository>((ref) => UserDataRepositoryImpl(ref.watch(userDataSourceProvider)));

// Data Sources
final marketDataSourceProvider = Provider<MarketDataSource>((ref) => MarketDataSourceImpl(ref.watch(sharedPreferencesProvider)));
final tradeDataSourceProvider = Provider<TradeDataSource>((ref) => TradeDataSourceImpl(ref.watch(httpClientProvider)));
final userDataSourceProvider = Provider<UserDataDataSource>((ref) => UserDataDataSourceImpl(ref.watch(httpClientProvider)));

// External
final httpClientProvider = Provider<http.Client>((ref) => http.Client());
final sharedPreferencesProvider = Provider<SharedPreferences>((ref) => sharedPreferencesInstance);
