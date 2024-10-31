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
  static final _$searchPlugin = $grpc.ClientMethod<$1.SearchPluginRequest, $1.SearchPluginResponse>(
      '/manga.v1.MangaService/SearchPlugin',
      ($1.SearchPluginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.SearchPluginResponse.fromBuffer(value));
  static final _$refreshManga = $grpc.ClientMethod<$1.RefreshMangaRequest, $1.RefreshMangaResponse>(
      '/manga.v1.MangaService/RefreshManga',
      ($1.RefreshMangaRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.RefreshMangaResponse.fromBuffer(value));
  static final _$installRepo = $grpc.ClientMethod<$1.InstallRepoRequest, $1.InstallRepoResponse>(
      '/manga.v1.MangaService/InstallRepo',
      ($1.InstallRepoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.InstallRepoResponse.fromBuffer(value));
  static final _$unInstallRepo = $grpc.ClientMethod<$1.RepoRequest, $1.RepoResponse>(
      '/manga.v1.MangaService/UnInstallRepo',
      ($1.RepoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.RepoResponse.fromBuffer(value));
  static final _$updateRepo = $grpc.ClientMethod<$1.RepoRequest, $1.RepoResponse>(
      '/manga.v1.MangaService/UpdateRepo',
      ($1.RepoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.RepoResponse.fromBuffer(value));
  static final _$listRepos = $grpc.ClientMethod<$1.ListRepoRequest, $1.ListRepoResponse>(
      '/manga.v1.MangaService/ListRepos',
      ($1.ListRepoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ListRepoResponse.fromBuffer(value));
  static final _$installExtension = $grpc.ClientMethod<$1.ExtensionRequest, $1.ExtensionResponse>(
      '/manga.v1.MangaService/InstallExtension',
      ($1.ExtensionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ExtensionResponse.fromBuffer(value));
  static final _$unInstallExtension = $grpc.ClientMethod<$1.ExtensionRequest, $1.ExtensionResponse>(
      '/manga.v1.MangaService/UnInstallExtension',
      ($1.ExtensionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ExtensionResponse.fromBuffer(value));
  static final _$updateExtension = $grpc.ClientMethod<$1.ExtensionRequest, $1.ExtensionResponse>(
      '/manga.v1.MangaService/UpdateExtension',
      ($1.ExtensionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ExtensionResponse.fromBuffer(value));
  static final _$listExtensions = $grpc.ClientMethod<$1.ListExtensionRequest, $1.ListExtensionResponse>(
      '/manga.v1.MangaService/ListExtensions',
      ($1.ListExtensionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ListExtensionResponse.fromBuffer(value));

  MangaServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.SearchPluginResponse> searchPlugin($1.SearchPluginRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchPlugin, request, options: options);
  }

  $grpc.ResponseFuture<$1.RefreshMangaResponse> refreshManga($1.RefreshMangaRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$refreshManga, request, options: options);
  }

  $grpc.ResponseFuture<$1.InstallRepoResponse> installRepo($1.InstallRepoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$installRepo, request, options: options);
  }

  $grpc.ResponseFuture<$1.RepoResponse> unInstallRepo($1.RepoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unInstallRepo, request, options: options);
  }

  $grpc.ResponseFuture<$1.RepoResponse> updateRepo($1.RepoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRepo, request, options: options);
  }

  $grpc.ResponseFuture<$1.ListRepoResponse> listRepos($1.ListRepoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRepos, request, options: options);
  }

  $grpc.ResponseFuture<$1.ExtensionResponse> installExtension($1.ExtensionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$installExtension, request, options: options);
  }

  $grpc.ResponseFuture<$1.ExtensionResponse> unInstallExtension($1.ExtensionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unInstallExtension, request, options: options);
  }

  $grpc.ResponseFuture<$1.ExtensionResponse> updateExtension($1.ExtensionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateExtension, request, options: options);
  }

  $grpc.ResponseFuture<$1.ListExtensionResponse> listExtensions($1.ListExtensionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listExtensions, request, options: options);
  }
}

@$pb.GrpcServiceName('manga.v1.MangaService')
abstract class MangaServiceBase extends $grpc.Service {
  $core.String get $name => 'manga.v1.MangaService';

  MangaServiceBase() {
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
    $addMethod($grpc.ServiceMethod<$1.InstallRepoRequest, $1.InstallRepoResponse>(
        'InstallRepo',
        installRepo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.InstallRepoRequest.fromBuffer(value),
        ($1.InstallRepoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RepoRequest, $1.RepoResponse>(
        'UnInstallRepo',
        unInstallRepo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.RepoRequest.fromBuffer(value),
        ($1.RepoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RepoRequest, $1.RepoResponse>(
        'UpdateRepo',
        updateRepo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.RepoRequest.fromBuffer(value),
        ($1.RepoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ListRepoRequest, $1.ListRepoResponse>(
        'ListRepos',
        listRepos_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ListRepoRequest.fromBuffer(value),
        ($1.ListRepoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ExtensionRequest, $1.ExtensionResponse>(
        'InstallExtension',
        installExtension_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ExtensionRequest.fromBuffer(value),
        ($1.ExtensionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ExtensionRequest, $1.ExtensionResponse>(
        'UnInstallExtension',
        unInstallExtension_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ExtensionRequest.fromBuffer(value),
        ($1.ExtensionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ExtensionRequest, $1.ExtensionResponse>(
        'UpdateExtension',
        updateExtension_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ExtensionRequest.fromBuffer(value),
        ($1.ExtensionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ListExtensionRequest, $1.ListExtensionResponse>(
        'ListExtensions',
        listExtensions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ListExtensionRequest.fromBuffer(value),
        ($1.ListExtensionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.SearchPluginResponse> searchPlugin_Pre($grpc.ServiceCall call, $async.Future<$1.SearchPluginRequest> request) async {
    return searchPlugin(call, await request);
  }

  $async.Future<$1.RefreshMangaResponse> refreshManga_Pre($grpc.ServiceCall call, $async.Future<$1.RefreshMangaRequest> request) async {
    return refreshManga(call, await request);
  }

  $async.Future<$1.InstallRepoResponse> installRepo_Pre($grpc.ServiceCall call, $async.Future<$1.InstallRepoRequest> request) async {
    return installRepo(call, await request);
  }

  $async.Future<$1.RepoResponse> unInstallRepo_Pre($grpc.ServiceCall call, $async.Future<$1.RepoRequest> request) async {
    return unInstallRepo(call, await request);
  }

  $async.Future<$1.RepoResponse> updateRepo_Pre($grpc.ServiceCall call, $async.Future<$1.RepoRequest> request) async {
    return updateRepo(call, await request);
  }

  $async.Future<$1.ListRepoResponse> listRepos_Pre($grpc.ServiceCall call, $async.Future<$1.ListRepoRequest> request) async {
    return listRepos(call, await request);
  }

  $async.Future<$1.ExtensionResponse> installExtension_Pre($grpc.ServiceCall call, $async.Future<$1.ExtensionRequest> request) async {
    return installExtension(call, await request);
  }

  $async.Future<$1.ExtensionResponse> unInstallExtension_Pre($grpc.ServiceCall call, $async.Future<$1.ExtensionRequest> request) async {
    return unInstallExtension(call, await request);
  }

  $async.Future<$1.ExtensionResponse> updateExtension_Pre($grpc.ServiceCall call, $async.Future<$1.ExtensionRequest> request) async {
    return updateExtension(call, await request);
  }

  $async.Future<$1.ListExtensionResponse> listExtensions_Pre($grpc.ServiceCall call, $async.Future<$1.ListExtensionRequest> request) async {
    return listExtensions(call, await request);
  }

  $async.Future<$1.SearchPluginResponse> searchPlugin($grpc.ServiceCall call, $1.SearchPluginRequest request);
  $async.Future<$1.RefreshMangaResponse> refreshManga($grpc.ServiceCall call, $1.RefreshMangaRequest request);
  $async.Future<$1.InstallRepoResponse> installRepo($grpc.ServiceCall call, $1.InstallRepoRequest request);
  $async.Future<$1.RepoResponse> unInstallRepo($grpc.ServiceCall call, $1.RepoRequest request);
  $async.Future<$1.RepoResponse> updateRepo($grpc.ServiceCall call, $1.RepoRequest request);
  $async.Future<$1.ListRepoResponse> listRepos($grpc.ServiceCall call, $1.ListRepoRequest request);
  $async.Future<$1.ExtensionResponse> installExtension($grpc.ServiceCall call, $1.ExtensionRequest request);
  $async.Future<$1.ExtensionResponse> unInstallExtension($grpc.ServiceCall call, $1.ExtensionRequest request);
  $async.Future<$1.ExtensionResponse> updateExtension($grpc.ServiceCall call, $1.ExtensionRequest request);
  $async.Future<$1.ListExtensionResponse> listExtensions($grpc.ServiceCall call, $1.ListExtensionRequest request);
}
