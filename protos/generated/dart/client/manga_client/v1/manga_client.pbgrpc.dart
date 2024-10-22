//
//  Generated code. Do not modify.
//  source: client/manga_client/v1/manga_client.proto
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

import 'manga_client.pb.dart' as $0;

export 'manga_client.pb.dart';

@$pb.GrpcServiceName('manga_client.v1.MangaClientService')
class MangaClientServiceClient extends $grpc.Client {
  static final _$newJob = $grpc.ClientMethod<$0.NewJobRequest, $0.NewJobResponse>(
      '/manga_client.v1.MangaClientService/NewJob',
      ($0.NewJobRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.NewJobResponse.fromBuffer(value));
  static final _$jobStatus = $grpc.ClientMethod<$0.JobStatusRequest, $0.JobStatusResponse>(
      '/manga_client.v1.MangaClientService/JobStatus',
      ($0.JobStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.JobStatusResponse.fromBuffer(value));
  static final _$cancelJob = $grpc.ClientMethod<$0.CancelJobRequest, $0.CancelJobResponse>(
      '/manga_client.v1.MangaClientService/CancelJob',
      ($0.CancelJobRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CancelJobResponse.fromBuffer(value));

  MangaClientServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.NewJobResponse> newJob($0.NewJobRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$newJob, request, options: options);
  }

  $grpc.ResponseFuture<$0.JobStatusResponse> jobStatus($0.JobStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$jobStatus, request, options: options);
  }

  $grpc.ResponseFuture<$0.CancelJobResponse> cancelJob($0.CancelJobRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelJob, request, options: options);
  }
}

@$pb.GrpcServiceName('manga_client.v1.MangaClientService')
abstract class MangaClientServiceBase extends $grpc.Service {
  $core.String get $name => 'manga_client.v1.MangaClientService';

  MangaClientServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.NewJobRequest, $0.NewJobResponse>(
        'NewJob',
        newJob_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.NewJobRequest.fromBuffer(value),
        ($0.NewJobResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.JobStatusRequest, $0.JobStatusResponse>(
        'JobStatus',
        jobStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.JobStatusRequest.fromBuffer(value),
        ($0.JobStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CancelJobRequest, $0.CancelJobResponse>(
        'CancelJob',
        cancelJob_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CancelJobRequest.fromBuffer(value),
        ($0.CancelJobResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.NewJobResponse> newJob_Pre($grpc.ServiceCall call, $async.Future<$0.NewJobRequest> request) async {
    return newJob(call, await request);
  }

  $async.Future<$0.JobStatusResponse> jobStatus_Pre($grpc.ServiceCall call, $async.Future<$0.JobStatusRequest> request) async {
    return jobStatus(call, await request);
  }

  $async.Future<$0.CancelJobResponse> cancelJob_Pre($grpc.ServiceCall call, $async.Future<$0.CancelJobRequest> request) async {
    return cancelJob(call, await request);
  }

  $async.Future<$0.NewJobResponse> newJob($grpc.ServiceCall call, $0.NewJobRequest request);
  $async.Future<$0.JobStatusResponse> jobStatus($grpc.ServiceCall call, $0.JobStatusRequest request);
  $async.Future<$0.CancelJobResponse> cancelJob($grpc.ServiceCall call, $0.CancelJobRequest request);
}
