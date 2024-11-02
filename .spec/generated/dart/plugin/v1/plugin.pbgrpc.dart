//
//  Generated code. Do not modify.
//  source: plugin/v1/plugin.proto
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

import '../../types/plugin/v1/plugin_types.pb.dart' as $0;

export 'plugin.pb.dart';

@$pb.GrpcServiceName('plugin.v1.PluginService')
class PluginServiceClient extends $grpc.Client {
  static final _$installRepo = $grpc.ClientMethod<$0.InstallRepoRequest, $0.InstallRepoResponse>(
      '/plugin.v1.PluginService/InstallRepo',
      ($0.InstallRepoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.InstallRepoResponse.fromBuffer(value));
  static final _$uninstallRepo = $grpc.ClientMethod<$0.RepoRequest, $0.RepoResponse>(
      '/plugin.v1.PluginService/UninstallRepo',
      ($0.RepoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.RepoResponse.fromBuffer(value));
  static final _$updateRepo = $grpc.ClientMethod<$0.RepoRequest, $0.RepoResponse>(
      '/plugin.v1.PluginService/UpdateRepo',
      ($0.RepoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.RepoResponse.fromBuffer(value));
  static final _$listRepos = $grpc.ClientMethod<$0.ListRepoRequest, $0.ListRepoResponse>(
      '/plugin.v1.PluginService/ListRepos',
      ($0.ListRepoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListRepoResponse.fromBuffer(value));
  static final _$installExtension = $grpc.ClientMethod<$0.ExtensionRequest, $0.ExtensionResponse>(
      '/plugin.v1.PluginService/InstallExtension',
      ($0.ExtensionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ExtensionResponse.fromBuffer(value));
  static final _$uninstallExtension = $grpc.ClientMethod<$0.ExtensionRequest, $0.ExtensionResponse>(
      '/plugin.v1.PluginService/UninstallExtension',
      ($0.ExtensionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ExtensionResponse.fromBuffer(value));
  static final _$updateExtension = $grpc.ClientMethod<$0.ExtensionRequest, $0.ExtensionResponse>(
      '/plugin.v1.PluginService/UpdateExtension',
      ($0.ExtensionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ExtensionResponse.fromBuffer(value));
  static final _$listExtensions = $grpc.ClientMethod<$0.ListExtensionRequest, $0.ListExtensionResponse>(
      '/plugin.v1.PluginService/ListExtensions',
      ($0.ListExtensionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListExtensionResponse.fromBuffer(value));

  PluginServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.InstallRepoResponse> installRepo($0.InstallRepoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$installRepo, request, options: options);
  }

  $grpc.ResponseFuture<$0.RepoResponse> uninstallRepo($0.RepoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$uninstallRepo, request, options: options);
  }

  $grpc.ResponseFuture<$0.RepoResponse> updateRepo($0.RepoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRepo, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListRepoResponse> listRepos($0.ListRepoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRepos, request, options: options);
  }

  $grpc.ResponseFuture<$0.ExtensionResponse> installExtension($0.ExtensionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$installExtension, request, options: options);
  }

  $grpc.ResponseFuture<$0.ExtensionResponse> uninstallExtension($0.ExtensionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$uninstallExtension, request, options: options);
  }

  $grpc.ResponseFuture<$0.ExtensionResponse> updateExtension($0.ExtensionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateExtension, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListExtensionResponse> listExtensions($0.ListExtensionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listExtensions, request, options: options);
  }
}

@$pb.GrpcServiceName('plugin.v1.PluginService')
abstract class PluginServiceBase extends $grpc.Service {
  $core.String get $name => 'plugin.v1.PluginService';

  PluginServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.InstallRepoRequest, $0.InstallRepoResponse>(
        'InstallRepo',
        installRepo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.InstallRepoRequest.fromBuffer(value),
        ($0.InstallRepoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RepoRequest, $0.RepoResponse>(
        'UninstallRepo',
        uninstallRepo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RepoRequest.fromBuffer(value),
        ($0.RepoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RepoRequest, $0.RepoResponse>(
        'UpdateRepo',
        updateRepo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RepoRequest.fromBuffer(value),
        ($0.RepoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListRepoRequest, $0.ListRepoResponse>(
        'ListRepos',
        listRepos_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListRepoRequest.fromBuffer(value),
        ($0.ListRepoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ExtensionRequest, $0.ExtensionResponse>(
        'InstallExtension',
        installExtension_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ExtensionRequest.fromBuffer(value),
        ($0.ExtensionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ExtensionRequest, $0.ExtensionResponse>(
        'UninstallExtension',
        uninstallExtension_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ExtensionRequest.fromBuffer(value),
        ($0.ExtensionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ExtensionRequest, $0.ExtensionResponse>(
        'UpdateExtension',
        updateExtension_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ExtensionRequest.fromBuffer(value),
        ($0.ExtensionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListExtensionRequest, $0.ListExtensionResponse>(
        'ListExtensions',
        listExtensions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListExtensionRequest.fromBuffer(value),
        ($0.ListExtensionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.InstallRepoResponse> installRepo_Pre($grpc.ServiceCall call, $async.Future<$0.InstallRepoRequest> request) async {
    return installRepo(call, await request);
  }

  $async.Future<$0.RepoResponse> uninstallRepo_Pre($grpc.ServiceCall call, $async.Future<$0.RepoRequest> request) async {
    return uninstallRepo(call, await request);
  }

  $async.Future<$0.RepoResponse> updateRepo_Pre($grpc.ServiceCall call, $async.Future<$0.RepoRequest> request) async {
    return updateRepo(call, await request);
  }

  $async.Future<$0.ListRepoResponse> listRepos_Pre($grpc.ServiceCall call, $async.Future<$0.ListRepoRequest> request) async {
    return listRepos(call, await request);
  }

  $async.Future<$0.ExtensionResponse> installExtension_Pre($grpc.ServiceCall call, $async.Future<$0.ExtensionRequest> request) async {
    return installExtension(call, await request);
  }

  $async.Future<$0.ExtensionResponse> uninstallExtension_Pre($grpc.ServiceCall call, $async.Future<$0.ExtensionRequest> request) async {
    return uninstallExtension(call, await request);
  }

  $async.Future<$0.ExtensionResponse> updateExtension_Pre($grpc.ServiceCall call, $async.Future<$0.ExtensionRequest> request) async {
    return updateExtension(call, await request);
  }

  $async.Future<$0.ListExtensionResponse> listExtensions_Pre($grpc.ServiceCall call, $async.Future<$0.ListExtensionRequest> request) async {
    return listExtensions(call, await request);
  }

  $async.Future<$0.InstallRepoResponse> installRepo($grpc.ServiceCall call, $0.InstallRepoRequest request);
  $async.Future<$0.RepoResponse> uninstallRepo($grpc.ServiceCall call, $0.RepoRequest request);
  $async.Future<$0.RepoResponse> updateRepo($grpc.ServiceCall call, $0.RepoRequest request);
  $async.Future<$0.ListRepoResponse> listRepos($grpc.ServiceCall call, $0.ListRepoRequest request);
  $async.Future<$0.ExtensionResponse> installExtension($grpc.ServiceCall call, $0.ExtensionRequest request);
  $async.Future<$0.ExtensionResponse> uninstallExtension($grpc.ServiceCall call, $0.ExtensionRequest request);
  $async.Future<$0.ExtensionResponse> updateExtension($grpc.ServiceCall call, $0.ExtensionRequest request);
  $async.Future<$0.ListExtensionResponse> listExtensions($grpc.ServiceCall call, $0.ListExtensionRequest request);
}
