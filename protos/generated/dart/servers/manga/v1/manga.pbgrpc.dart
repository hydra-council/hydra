//
//  Generated code. Do not modify.
//  source: servers/manga/v1/manga.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'manga.pb.dart' as $1;

export 'manga.pb.dart';

@$pb.GrpcServiceName('manga.v1.MangaService')
class MangaServiceClient extends $grpc.Client {
  static final _$installPlugin = $grpc.ClientMethod<$1.NewPluginRequest, $1.NewPluginResponse>(
      '/manga.v1.MangaService/InstallPlugin',
      ($1.NewPluginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.NewPluginResponse.fromBuffer(value));
  static final _$deletePlugin = $grpc.ClientMethod<$1.DeletePluginRequest, $1.DeletePluginResponse>(
      '/manga.v1.MangaService/DeletePlugin',
      ($1.DeletePluginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.DeletePluginResponse.fromBuffer(value));
  static final _$searchPlugin = $grpc.ClientMethod<$1.SearchPluginRequest, $1.SearchPluginResponse>(
      '/manga.v1.MangaService/SearchPlugin',
      ($1.SearchPluginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.SearchPluginResponse.fromBuffer(value));
  static final _$refreshManga = $grpc.ClientMethod<$1.RefreshMangaRequest, $1.RefreshMangaResponse>(
      '/manga.v1.MangaService/RefreshManga',
      ($1.RefreshMangaRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.RefreshMangaResponse.fromBuffer(value));

  MangaServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.NewPluginResponse> installPlugin($1.NewPluginRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$installPlugin, request, options: options);
  }

  $grpc.ResponseFuture<$1.DeletePluginResponse> deletePlugin($1.DeletePluginRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePlugin, request, options: options);
  }

  $grpc.ResponseFuture<$1.SearchPluginResponse> searchPlugin($1.SearchPluginRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchPlugin, request, options: options);
  }

  $grpc.ResponseFuture<$1.RefreshMangaResponse> refreshManga($1.RefreshMangaRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$refreshManga, request, options: options);
  }
}

@$pb.GrpcServiceName('manga.v1.MangaService')
abstract class MangaServiceBase extends $grpc.Service {
  $core.String get $name => 'manga.v1.MangaService';

  MangaServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.NewPluginRequest, $1.NewPluginResponse>(
        'InstallPlugin',
        installPlugin_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.NewPluginRequest.fromBuffer(value),
        ($1.NewPluginResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DeletePluginRequest, $1.DeletePluginResponse>(
        'DeletePlugin',
        deletePlugin_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.DeletePluginRequest.fromBuffer(value),
        ($1.DeletePluginResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SearchPluginRequest, $1.SearchPluginResponse>(
        'SearchPlugin',
        searchPlugin_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SearchPluginRequest.fromBuffer(value),
        ($1.SearchPluginResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RefreshMangaRequest, $1.RefreshMangaResponse>(
        'RefreshManga',
        refreshManga_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.RefreshMangaRequest.fromBuffer(value),
        ($1.RefreshMangaResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.NewPluginResponse> installPlugin_Pre($grpc.ServiceCall call, $async.Future<$1.NewPluginRequest> request) async {
    return installPlugin(call, await request);
  }

  $async.Future<$1.DeletePluginResponse> deletePlugin_Pre($grpc.ServiceCall call, $async.Future<$1.DeletePluginRequest> request) async {
    return deletePlugin(call, await request);
  }

  $async.Future<$1.SearchPluginResponse> searchPlugin_Pre($grpc.ServiceCall call, $async.Future<$1.SearchPluginRequest> request) async {
    return searchPlugin(call, await request);
  }

  $async.Future<$1.RefreshMangaResponse> refreshManga_Pre($grpc.ServiceCall call, $async.Future<$1.RefreshMangaRequest> request) async {
    return refreshManga(call, await request);
  }

  $async.Future<$1.NewPluginResponse> installPlugin($grpc.ServiceCall call, $1.NewPluginRequest request);
  $async.Future<$1.DeletePluginResponse> deletePlugin($grpc.ServiceCall call, $1.DeletePluginRequest request);
  $async.Future<$1.SearchPluginResponse> searchPlugin($grpc.ServiceCall call, $1.SearchPluginRequest request);
  $async.Future<$1.RefreshMangaResponse> refreshManga($grpc.ServiceCall call, $1.RefreshMangaRequest request);
}
