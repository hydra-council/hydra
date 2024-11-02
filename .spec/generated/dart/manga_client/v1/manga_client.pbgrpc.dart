//
//  Generated code. Do not modify.
//  source: manga_client/v1/manga_client.proto
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

import 'manga_client.pb.dart' as $2;

export 'manga_client.pb.dart';

@$pb.GrpcServiceName('manga_client.v1.MangaClientService')
class MangaClientServiceClient extends $grpc.Client {
  static final _$newJob = $grpc.ClientMethod<$2.NewJobRequest, $2.NewJobResponse>(
      '/manga_client.v1.MangaClientService/NewJob',
      ($2.NewJobRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.NewJobResponse.fromBuffer(value));
  static final _$jobStatus = $grpc.ClientMethod<$2.JobStatusRequest, $2.JobStatusResponse>(
      '/manga_client.v1.MangaClientService/JobStatus',
      ($2.JobStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.JobStatusResponse.fromBuffer(value));
  static final _$cancelJob = $grpc.ClientMethod<$2.CancelJobRequest, $2.CancelJobResponse>(
      '/manga_client.v1.MangaClientService/CancelJob',
      ($2.CancelJobRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.CancelJobResponse.fromBuffer(value));

  MangaClientServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.NewJobResponse> newJob($2.NewJobRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$newJob, request, options: options);
  }

  $grpc.ResponseFuture<$2.JobStatusResponse> jobStatus($2.JobStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$jobStatus, request, options: options);
  }

  $grpc.ResponseFuture<$2.CancelJobResponse> cancelJob($2.CancelJobRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelJob, request, options: options);
  }
}

@$pb.GrpcServiceName('manga_client.v1.MangaClientService')
abstract class MangaClientServiceBase extends $grpc.Service {
  $core.String get $name => 'manga_client.v1.MangaClientService';

  MangaClientServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.NewJobRequest, $2.NewJobResponse>(
        'NewJob',
        newJob_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.NewJobRequest.fromBuffer(value),
        ($2.NewJobResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.JobStatusRequest, $2.JobStatusResponse>(
        'JobStatus',
        jobStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.JobStatusRequest.fromBuffer(value),
        ($2.JobStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CancelJobRequest, $2.CancelJobResponse>(
        'CancelJob',
        cancelJob_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CancelJobRequest.fromBuffer(value),
        ($2.CancelJobResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.NewJobResponse> newJob_Pre($grpc.ServiceCall call, $async.Future<$2.NewJobRequest> request) async {
    return newJob(call, await request);
  }

  $async.Future<$2.JobStatusResponse> jobStatus_Pre($grpc.ServiceCall call, $async.Future<$2.JobStatusRequest> request) async {
    return jobStatus(call, await request);
  }

  $async.Future<$2.CancelJobResponse> cancelJob_Pre($grpc.ServiceCall call, $async.Future<$2.CancelJobRequest> request) async {
    return cancelJob(call, await request);
  }

  $async.Future<$2.NewJobResponse> newJob($grpc.ServiceCall call, $2.NewJobRequest request);
  $async.Future<$2.JobStatusResponse> jobStatus($grpc.ServiceCall call, $2.JobStatusRequest request);
  $async.Future<$2.CancelJobResponse> cancelJob($grpc.ServiceCall call, $2.CancelJobRequest request);
}
