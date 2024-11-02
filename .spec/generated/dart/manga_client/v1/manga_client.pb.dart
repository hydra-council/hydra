//
//  Generated code. Do not modify.
//  source: manga_client/v1/manga_client.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class NewJobRequest extends $pb.GeneratedMessage {
  factory NewJobRequest() => create();
  NewJobRequest._() : super();
  factory NewJobRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewJobRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NewJobRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'manga_client.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewJobRequest clone() => NewJobRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewJobRequest copyWith(void Function(NewJobRequest) updates) => super.copyWith((message) => updates(message as NewJobRequest)) as NewJobRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NewJobRequest create() => NewJobRequest._();
  NewJobRequest createEmptyInstance() => create();
  static $pb.PbList<NewJobRequest> createRepeated() => $pb.PbList<NewJobRequest>();
  @$core.pragma('dart2js:noInline')
  static NewJobRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewJobRequest>(create);
  static NewJobRequest? _defaultInstance;
}

class NewJobResponse extends $pb.GeneratedMessage {
  factory NewJobResponse() => create();
  NewJobResponse._() : super();
  factory NewJobResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewJobResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NewJobResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'manga_client.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewJobResponse clone() => NewJobResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewJobResponse copyWith(void Function(NewJobResponse) updates) => super.copyWith((message) => updates(message as NewJobResponse)) as NewJobResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NewJobResponse create() => NewJobResponse._();
  NewJobResponse createEmptyInstance() => create();
  static $pb.PbList<NewJobResponse> createRepeated() => $pb.PbList<NewJobResponse>();
  @$core.pragma('dart2js:noInline')
  static NewJobResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewJobResponse>(create);
  static NewJobResponse? _defaultInstance;
}

class JobStatusRequest extends $pb.GeneratedMessage {
  factory JobStatusRequest() => create();
  JobStatusRequest._() : super();
  factory JobStatusRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JobStatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'JobStatusRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'manga_client.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JobStatusRequest clone() => JobStatusRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JobStatusRequest copyWith(void Function(JobStatusRequest) updates) => super.copyWith((message) => updates(message as JobStatusRequest)) as JobStatusRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JobStatusRequest create() => JobStatusRequest._();
  JobStatusRequest createEmptyInstance() => create();
  static $pb.PbList<JobStatusRequest> createRepeated() => $pb.PbList<JobStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static JobStatusRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JobStatusRequest>(create);
  static JobStatusRequest? _defaultInstance;
}

class JobStatusResponse extends $pb.GeneratedMessage {
  factory JobStatusResponse() => create();
  JobStatusResponse._() : super();
  factory JobStatusResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JobStatusResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'JobStatusResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'manga_client.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JobStatusResponse clone() => JobStatusResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JobStatusResponse copyWith(void Function(JobStatusResponse) updates) => super.copyWith((message) => updates(message as JobStatusResponse)) as JobStatusResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JobStatusResponse create() => JobStatusResponse._();
  JobStatusResponse createEmptyInstance() => create();
  static $pb.PbList<JobStatusResponse> createRepeated() => $pb.PbList<JobStatusResponse>();
  @$core.pragma('dart2js:noInline')
  static JobStatusResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JobStatusResponse>(create);
  static JobStatusResponse? _defaultInstance;
}

class CancelJobRequest extends $pb.GeneratedMessage {
  factory CancelJobRequest() => create();
  CancelJobRequest._() : super();
  factory CancelJobRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CancelJobRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CancelJobRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'manga_client.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CancelJobRequest clone() => CancelJobRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CancelJobRequest copyWith(void Function(CancelJobRequest) updates) => super.copyWith((message) => updates(message as CancelJobRequest)) as CancelJobRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CancelJobRequest create() => CancelJobRequest._();
  CancelJobRequest createEmptyInstance() => create();
  static $pb.PbList<CancelJobRequest> createRepeated() => $pb.PbList<CancelJobRequest>();
  @$core.pragma('dart2js:noInline')
  static CancelJobRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CancelJobRequest>(create);
  static CancelJobRequest? _defaultInstance;
}

class CancelJobResponse extends $pb.GeneratedMessage {
  factory CancelJobResponse() => create();
  CancelJobResponse._() : super();
  factory CancelJobResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CancelJobResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CancelJobResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'manga_client.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CancelJobResponse clone() => CancelJobResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CancelJobResponse copyWith(void Function(CancelJobResponse) updates) => super.copyWith((message) => updates(message as CancelJobResponse)) as CancelJobResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CancelJobResponse create() => CancelJobResponse._();
  CancelJobResponse createEmptyInstance() => create();
  static $pb.PbList<CancelJobResponse> createRepeated() => $pb.PbList<CancelJobResponse>();
  @$core.pragma('dart2js:noInline')
  static CancelJobResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CancelJobResponse>(create);
  static CancelJobResponse? _defaultInstance;
}


const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
