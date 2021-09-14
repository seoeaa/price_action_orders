// Mocks generated by Mockito 5.0.15 from annotations
// in price_action_orders/test/data/datasources/user_datasource_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i2;
import 'dart:convert' as _i10;
import 'dart:io' as _i3;
import 'dart:typed_data' as _i11;

import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:http/src/base_request.dart' as _i12;
import 'package:http/src/client.dart' as _i9;
import 'package:http/src/response.dart' as _i5;
import 'package:http/src/streamed_response.dart' as _i6;
import 'package:mockito/mockito.dart' as _i1;
import 'package:price_action_orders/core/utils/datasource_utils.dart' as _i8;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeTimer_0 extends _i1.Fake implements _i2.Timer {}

class _FakeWebSocket_1 extends _i1.Fake implements _i3.WebSocket {}

class _FakeIOSOptions_2 extends _i1.Fake implements _i4.IOSOptions {}

class _FakeAndroidOptions_3 extends _i1.Fake implements _i4.AndroidOptions {}

class _FakeLinuxOptions_4 extends _i1.Fake implements _i4.LinuxOptions {}

class _FakeWindowsOptions_5 extends _i1.Fake implements _i4.WindowsOptions {}

class _FakeWebOptions_6 extends _i1.Fake implements _i4.WebOptions {}

class _FakeMacOsOptions_7 extends _i1.Fake implements _i4.MacOsOptions {}

class _FakeResponse_8 extends _i1.Fake implements _i5.Response {}

class _FakeStreamedResponse_9 extends _i1.Fake implements _i6.StreamedResponse {
}

/// A class which mocks [SharedPreferences].
///
/// See the documentation for Mockito's code generation for more information.
class MockSharedPreferences extends _i1.Mock implements _i7.SharedPreferences {
  MockSharedPreferences() {
    _i1.throwOnMissingStub(this);
  }

  @override
  Set<String> getKeys() => (super.noSuchMethod(Invocation.method(#getKeys, []),
      returnValue: <String>{}) as Set<String>);
  @override
  Object? get(String? key) =>
      (super.noSuchMethod(Invocation.method(#get, [key])) as Object?);
  @override
  bool? getBool(String? key) =>
      (super.noSuchMethod(Invocation.method(#getBool, [key])) as bool?);
  @override
  int? getInt(String? key) =>
      (super.noSuchMethod(Invocation.method(#getInt, [key])) as int?);
  @override
  double? getDouble(String? key) =>
      (super.noSuchMethod(Invocation.method(#getDouble, [key])) as double?);
  @override
  String? getString(String? key) =>
      (super.noSuchMethod(Invocation.method(#getString, [key])) as String?);
  @override
  bool containsKey(String? key) =>
      (super.noSuchMethod(Invocation.method(#containsKey, [key]),
          returnValue: false) as bool);
  @override
  List<String>? getStringList(String? key) =>
      (super.noSuchMethod(Invocation.method(#getStringList, [key]))
          as List<String>?);
  @override
  _i2.Future<bool> setBool(String? key, bool? value) =>
      (super.noSuchMethod(Invocation.method(#setBool, [key, value]),
          returnValue: Future<bool>.value(false)) as _i2.Future<bool>);
  @override
  _i2.Future<bool> setInt(String? key, int? value) =>
      (super.noSuchMethod(Invocation.method(#setInt, [key, value]),
          returnValue: Future<bool>.value(false)) as _i2.Future<bool>);
  @override
  _i2.Future<bool> setDouble(String? key, double? value) =>
      (super.noSuchMethod(Invocation.method(#setDouble, [key, value]),
          returnValue: Future<bool>.value(false)) as _i2.Future<bool>);
  @override
  _i2.Future<bool> setString(String? key, String? value) =>
      (super.noSuchMethod(Invocation.method(#setString, [key, value]),
          returnValue: Future<bool>.value(false)) as _i2.Future<bool>);
  @override
  _i2.Future<bool> setStringList(String? key, List<String>? value) =>
      (super.noSuchMethod(Invocation.method(#setStringList, [key, value]),
          returnValue: Future<bool>.value(false)) as _i2.Future<bool>);
  @override
  _i2.Future<bool> remove(String? key) =>
      (super.noSuchMethod(Invocation.method(#remove, [key]),
          returnValue: Future<bool>.value(false)) as _i2.Future<bool>);
  @override
  _i2.Future<bool> commit() =>
      (super.noSuchMethod(Invocation.method(#commit, []),
          returnValue: Future<bool>.value(false)) as _i2.Future<bool>);
  @override
  _i2.Future<bool> clear() => (super.noSuchMethod(Invocation.method(#clear, []),
      returnValue: Future<bool>.value(false)) as _i2.Future<bool>);
  @override
  _i2.Future<void> reload() =>
      (super.noSuchMethod(Invocation.method(#reload, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i2.Future<void>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [DataSourceUtils].
///
/// See the documentation for Mockito's code generation for more information.
class MockDataSourceUtils extends _i1.Mock implements _i8.DataSourceUtils {
  MockDataSourceUtils() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.Timer periodicValidityExpander(Function? listenKeyValidityExpander,
          _i2.StreamController<dynamic>? streamController) =>
      (super.noSuchMethod(
          Invocation.method(#periodicValidityExpander,
              [listenKeyValidityExpander, streamController]),
          returnValue: _FakeTimer_0()) as _i2.Timer);
  @override
  _i2.Future<_i3.WebSocket> webSocketConnect(String? url,
          {Iterable<String>? protocols,
          Map<String, dynamic>? headers,
          _i3.CompressionOptions? compression =
              const _i3.CompressionOptions()}) =>
      (super.noSuchMethod(
              Invocation.method(#webSocketConnect, [
                url
              ], {
                #protocols: protocols,
                #headers: headers,
                #compression: compression
              }),
              returnValue: Future<_i3.WebSocket>.value(_FakeWebSocket_1()))
          as _i2.Future<_i3.WebSocket>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [FlutterSecureStorage].
///
/// See the documentation for Mockito's code generation for more information.
class MockFlutterSecureStorage extends _i1.Mock
    implements _i4.FlutterSecureStorage {
  MockFlutterSecureStorage() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.IOSOptions get iOptions =>
      (super.noSuchMethod(Invocation.getter(#iOptions),
          returnValue: _FakeIOSOptions_2()) as _i4.IOSOptions);
  @override
  _i4.AndroidOptions get aOptions =>
      (super.noSuchMethod(Invocation.getter(#aOptions),
          returnValue: _FakeAndroidOptions_3()) as _i4.AndroidOptions);
  @override
  _i4.LinuxOptions get lOptions =>
      (super.noSuchMethod(Invocation.getter(#lOptions),
          returnValue: _FakeLinuxOptions_4()) as _i4.LinuxOptions);
  @override
  _i4.WindowsOptions get wOptions =>
      (super.noSuchMethod(Invocation.getter(#wOptions),
          returnValue: _FakeWindowsOptions_5()) as _i4.WindowsOptions);
  @override
  _i4.WebOptions get webOptions =>
      (super.noSuchMethod(Invocation.getter(#webOptions),
          returnValue: _FakeWebOptions_6()) as _i4.WebOptions);
  @override
  _i4.MacOsOptions get mOptions =>
      (super.noSuchMethod(Invocation.getter(#mOptions),
          returnValue: _FakeMacOsOptions_7()) as _i4.MacOsOptions);
  @override
  _i2.Future<void> write(
          {String? key,
          String? value,
          _i4.IOSOptions? iOptions,
          _i4.AndroidOptions? aOptions,
          _i4.LinuxOptions? lOptions,
          _i4.WebOptions? webOptions,
          _i4.MacOsOptions? mOptions,
          _i4.WindowsOptions? wOptions}) =>
      (super.noSuchMethod(
          Invocation.method(#write, [], {
            #key: key,
            #value: value,
            #iOptions: iOptions,
            #aOptions: aOptions,
            #lOptions: lOptions,
            #webOptions: webOptions,
            #mOptions: mOptions,
            #wOptions: wOptions
          }),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i2.Future<void>);
  @override
  _i2.Future<String?> read(
          {String? key,
          _i4.IOSOptions? iOptions,
          _i4.AndroidOptions? aOptions,
          _i4.LinuxOptions? lOptions,
          _i4.WebOptions? webOptions,
          _i4.MacOsOptions? mOptions,
          _i4.WindowsOptions? wOptions}) =>
      (super.noSuchMethod(
          Invocation.method(#read, [], {
            #key: key,
            #iOptions: iOptions,
            #aOptions: aOptions,
            #lOptions: lOptions,
            #webOptions: webOptions,
            #mOptions: mOptions,
            #wOptions: wOptions
          }),
          returnValue: Future<String?>.value()) as _i2.Future<String?>);
  @override
  _i2.Future<bool> containsKey(
          {String? key,
          _i4.IOSOptions? iOptions,
          _i4.AndroidOptions? aOptions,
          _i4.LinuxOptions? lOptions,
          _i4.WebOptions? webOptions,
          _i4.MacOsOptions? mOptions,
          _i4.WindowsOptions? wOptions}) =>
      (super.noSuchMethod(
          Invocation.method(#containsKey, [], {
            #key: key,
            #iOptions: iOptions,
            #aOptions: aOptions,
            #lOptions: lOptions,
            #webOptions: webOptions,
            #mOptions: mOptions,
            #wOptions: wOptions
          }),
          returnValue: Future<bool>.value(false)) as _i2.Future<bool>);
  @override
  _i2.Future<void> delete(
          {String? key,
          _i4.IOSOptions? iOptions,
          _i4.AndroidOptions? aOptions,
          _i4.LinuxOptions? lOptions,
          _i4.WebOptions? webOptions,
          _i4.MacOsOptions? mOptions,
          _i4.WindowsOptions? wOptions}) =>
      (super.noSuchMethod(
          Invocation.method(#delete, [], {
            #key: key,
            #iOptions: iOptions,
            #aOptions: aOptions,
            #lOptions: lOptions,
            #webOptions: webOptions,
            #mOptions: mOptions,
            #wOptions: wOptions
          }),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i2.Future<void>);
  @override
  _i2.Future<Map<String, String>> readAll(
          {_i4.IOSOptions? iOptions,
          _i4.AndroidOptions? aOptions,
          _i4.LinuxOptions? lOptions,
          _i4.WebOptions? webOptions,
          _i4.MacOsOptions? mOptions,
          _i4.WindowsOptions? wOptions}) =>
      (super.noSuchMethod(
              Invocation.method(#readAll, [], {
                #iOptions: iOptions,
                #aOptions: aOptions,
                #lOptions: lOptions,
                #webOptions: webOptions,
                #mOptions: mOptions,
                #wOptions: wOptions
              }),
              returnValue:
                  Future<Map<String, String>>.value(<String, String>{}))
          as _i2.Future<Map<String, String>>);
  @override
  _i2.Future<void> deleteAll(
          {_i4.IOSOptions? iOptions,
          _i4.AndroidOptions? aOptions,
          _i4.LinuxOptions? lOptions,
          _i4.WebOptions? webOptions,
          _i4.MacOsOptions? mOptions,
          _i4.WindowsOptions? wOptions}) =>
      (super.noSuchMethod(
          Invocation.method(#deleteAll, [], {
            #iOptions: iOptions,
            #aOptions: aOptions,
            #lOptions: lOptions,
            #webOptions: webOptions,
            #mOptions: mOptions,
            #wOptions: wOptions
          }),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i2.Future<void>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [Client].
///
/// See the documentation for Mockito's code generation for more information.
class MockHttpClient extends _i1.Mock implements _i9.Client {
  MockHttpClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.Future<_i5.Response> head(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#head, [url], {#headers: headers}),
              returnValue: Future<_i5.Response>.value(_FakeResponse_8()))
          as _i2.Future<_i5.Response>);
  @override
  _i2.Future<_i5.Response> get(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#get, [url], {#headers: headers}),
              returnValue: Future<_i5.Response>.value(_FakeResponse_8()))
          as _i2.Future<_i5.Response>);
  @override
  _i2.Future<_i5.Response> post(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i10.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#post, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i5.Response>.value(_FakeResponse_8()))
          as _i2.Future<_i5.Response>);
  @override
  _i2.Future<_i5.Response> put(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i10.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#put, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i5.Response>.value(_FakeResponse_8()))
          as _i2.Future<_i5.Response>);
  @override
  _i2.Future<_i5.Response> patch(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i10.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#patch, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i5.Response>.value(_FakeResponse_8()))
          as _i2.Future<_i5.Response>);
  @override
  _i2.Future<_i5.Response> delete(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i10.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#delete, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i5.Response>.value(_FakeResponse_8()))
          as _i2.Future<_i5.Response>);
  @override
  _i2.Future<String> read(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#read, [url], {#headers: headers}),
          returnValue: Future<String>.value('')) as _i2.Future<String>);
  @override
  _i2.Future<_i11.Uint8List> readBytes(Uri? url,
          {Map<String, String>? headers}) =>
      (super.noSuchMethod(
              Invocation.method(#readBytes, [url], {#headers: headers}),
              returnValue: Future<_i11.Uint8List>.value(_i11.Uint8List(0)))
          as _i2.Future<_i11.Uint8List>);
  @override
  _i2.Future<_i6.StreamedResponse> send(_i12.BaseRequest? request) =>
      (super.noSuchMethod(Invocation.method(#send, [request]),
              returnValue:
                  Future<_i6.StreamedResponse>.value(_FakeStreamedResponse_9()))
          as _i2.Future<_i6.StreamedResponse>);
  @override
  void close() => super.noSuchMethod(Invocation.method(#close, []),
      returnValueForMissingStub: null);
  @override
  String toString() => super.toString();
}
