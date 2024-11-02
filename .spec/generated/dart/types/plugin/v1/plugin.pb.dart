//
//  Generated code. Do not modify.
//  source: types/plugin/v1/plugin.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

/// ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
///  Repo stuff
class InstallRepoRequest extends $pb.GeneratedMessage {
  factory InstallRepoRequest({
    $core.String? repoJsonUrl,
  }) {
    final $result = create();
    if (repoJsonUrl != null) {
      $result.repoJsonUrl = repoJsonUrl;
    }
    return $result;
  }
  InstallRepoRequest._() : super();
  factory InstallRepoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InstallRepoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InstallRepoRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin_types.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'repoJsonUrl', protoName: 'repoJsonUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InstallRepoRequest clone() => InstallRepoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InstallRepoRequest copyWith(void Function(InstallRepoRequest) updates) => super.copyWith((message) => updates(message as InstallRepoRequest)) as InstallRepoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InstallRepoRequest create() => InstallRepoRequest._();
  InstallRepoRequest createEmptyInstance() => create();
  static $pb.PbList<InstallRepoRequest> createRepeated() => $pb.PbList<InstallRepoRequest>();
  @$core.pragma('dart2js:noInline')
  static InstallRepoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InstallRepoRequest>(create);
  static InstallRepoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get repoJsonUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set repoJsonUrl($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRepoJsonUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearRepoJsonUrl() => clearField(1);
}

class InstallRepoResponse extends $pb.GeneratedMessage {
  factory InstallRepoResponse({
    $core.String? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  InstallRepoResponse._() : super();
  factory InstallRepoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InstallRepoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InstallRepoResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin_types.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InstallRepoResponse clone() => InstallRepoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InstallRepoResponse copyWith(void Function(InstallRepoResponse) updates) => super.copyWith((message) => updates(message as InstallRepoResponse)) as InstallRepoResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InstallRepoResponse create() => InstallRepoResponse._();
  InstallRepoResponse createEmptyInstance() => create();
  static $pb.PbList<InstallRepoResponse> createRepeated() => $pb.PbList<InstallRepoResponse>();
  @$core.pragma('dart2js:noInline')
  static InstallRepoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InstallRepoResponse>(create);
  static InstallRepoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class RepoRequest extends $pb.GeneratedMessage {
  factory RepoRequest({
    $fixnum.Int64? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  RepoRequest._() : super();
  factory RepoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RepoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RepoRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin_types.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RepoRequest clone() => RepoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RepoRequest copyWith(void Function(RepoRequest) updates) => super.copyWith((message) => updates(message as RepoRequest)) as RepoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepoRequest create() => RepoRequest._();
  RepoRequest createEmptyInstance() => create();
  static $pb.PbList<RepoRequest> createRepeated() => $pb.PbList<RepoRequest>();
  @$core.pragma('dart2js:noInline')
  static RepoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RepoRequest>(create);
  static RepoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class RepoResponse extends $pb.GeneratedMessage {
  factory RepoResponse({
    $core.String? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  RepoResponse._() : super();
  factory RepoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RepoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RepoResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin_types.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RepoResponse clone() => RepoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RepoResponse copyWith(void Function(RepoResponse) updates) => super.copyWith((message) => updates(message as RepoResponse)) as RepoResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepoResponse create() => RepoResponse._();
  RepoResponse createEmptyInstance() => create();
  static $pb.PbList<RepoResponse> createRepeated() => $pb.PbList<RepoResponse>();
  @$core.pragma('dart2js:noInline')
  static RepoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RepoResponse>(create);
  static RepoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class ListRepoRequest extends $pb.GeneratedMessage {
  factory ListRepoRequest() => create();
  ListRepoRequest._() : super();
  factory ListRepoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListRepoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListRepoRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin_types.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListRepoRequest clone() => ListRepoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListRepoRequest copyWith(void Function(ListRepoRequest) updates) => super.copyWith((message) => updates(message as ListRepoRequest)) as ListRepoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListRepoRequest create() => ListRepoRequest._();
  ListRepoRequest createEmptyInstance() => create();
  static $pb.PbList<ListRepoRequest> createRepeated() => $pb.PbList<ListRepoRequest>();
  @$core.pragma('dart2js:noInline')
  static ListRepoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListRepoRequest>(create);
  static ListRepoRequest? _defaultInstance;
}

class ListRepoResponse extends $pb.GeneratedMessage {
  factory ListRepoResponse({
    $core.Iterable<ExtensionRepo>? repos,
  }) {
    final $result = create();
    if (repos != null) {
      $result.repos.addAll(repos);
    }
    return $result;
  }
  ListRepoResponse._() : super();
  factory ListRepoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListRepoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListRepoResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin_types.v1'), createEmptyInstance: create)
    ..pc<ExtensionRepo>(1, _omitFieldNames ? '' : 'repos', $pb.PbFieldType.PM, subBuilder: ExtensionRepo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListRepoResponse clone() => ListRepoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListRepoResponse copyWith(void Function(ListRepoResponse) updates) => super.copyWith((message) => updates(message as ListRepoResponse)) as ListRepoResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListRepoResponse create() => ListRepoResponse._();
  ListRepoResponse createEmptyInstance() => create();
  static $pb.PbList<ListRepoResponse> createRepeated() => $pb.PbList<ListRepoResponse>();
  @$core.pragma('dart2js:noInline')
  static ListRepoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListRepoResponse>(create);
  static ListRepoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ExtensionRepo> get repos => $_getList(0);
}

class ExtensionRepo extends $pb.GeneratedMessage {
  factory ExtensionRepo({
    $core.String? id,
    $core.String? repoName,
    $core.String? repoUrl,
    $core.String? jsonRepoUrl,
    $core.String? version,
    $fixnum.Int64? manifestVersion,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (repoName != null) {
      $result.repoName = repoName;
    }
    if (repoUrl != null) {
      $result.repoUrl = repoUrl;
    }
    if (jsonRepoUrl != null) {
      $result.jsonRepoUrl = jsonRepoUrl;
    }
    if (version != null) {
      $result.version = version;
    }
    if (manifestVersion != null) {
      $result.manifestVersion = manifestVersion;
    }
    return $result;
  }
  ExtensionRepo._() : super();
  factory ExtensionRepo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExtensionRepo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExtensionRepo', package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin_types.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'repoName', protoName: 'repoName')
    ..aOS(3, _omitFieldNames ? '' : 'repoUrl', protoName: 'repoUrl')
    ..aOS(4, _omitFieldNames ? '' : 'jsonRepoUrl', protoName: 'jsonRepoUrl')
    ..aOS(5, _omitFieldNames ? '' : 'version')
    ..aInt64(6, _omitFieldNames ? '' : 'manifestVersion')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExtensionRepo clone() => ExtensionRepo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExtensionRepo copyWith(void Function(ExtensionRepo) updates) => super.copyWith((message) => updates(message as ExtensionRepo)) as ExtensionRepo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExtensionRepo create() => ExtensionRepo._();
  ExtensionRepo createEmptyInstance() => create();
  static $pb.PbList<ExtensionRepo> createRepeated() => $pb.PbList<ExtensionRepo>();
  @$core.pragma('dart2js:noInline')
  static ExtensionRepo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExtensionRepo>(create);
  static ExtensionRepo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get repoName => $_getSZ(1);
  @$pb.TagNumber(2)
  set repoName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRepoName() => $_has(1);
  @$pb.TagNumber(2)
  void clearRepoName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get repoUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set repoUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRepoUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearRepoUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get jsonRepoUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set jsonRepoUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasJsonRepoUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearJsonRepoUrl() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get version => $_getSZ(4);
  @$pb.TagNumber(5)
  set version($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasVersion() => $_has(4);
  @$pb.TagNumber(5)
  void clearVersion() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get manifestVersion => $_getI64(5);
  @$pb.TagNumber(6)
  set manifestVersion($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasManifestVersion() => $_has(5);
  @$pb.TagNumber(6)
  void clearManifestVersion() => clearField(6);
}

/// ////////////////////////////////////////////////////////////////////////////////////////////////////////////
///  Extension stuff
class ExtensionRequest extends $pb.GeneratedMessage {
  factory ExtensionRequest({
    $fixnum.Int64? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  ExtensionRequest._() : super();
  factory ExtensionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExtensionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExtensionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin_types.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExtensionRequest clone() => ExtensionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExtensionRequest copyWith(void Function(ExtensionRequest) updates) => super.copyWith((message) => updates(message as ExtensionRequest)) as ExtensionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExtensionRequest create() => ExtensionRequest._();
  ExtensionRequest createEmptyInstance() => create();
  static $pb.PbList<ExtensionRequest> createRepeated() => $pb.PbList<ExtensionRequest>();
  @$core.pragma('dart2js:noInline')
  static ExtensionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExtensionRequest>(create);
  static ExtensionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class ExtensionResponse extends $pb.GeneratedMessage {
  factory ExtensionResponse({
    $core.String? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  ExtensionResponse._() : super();
  factory ExtensionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExtensionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExtensionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin_types.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExtensionResponse clone() => ExtensionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExtensionResponse copyWith(void Function(ExtensionResponse) updates) => super.copyWith((message) => updates(message as ExtensionResponse)) as ExtensionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExtensionResponse create() => ExtensionResponse._();
  ExtensionResponse createEmptyInstance() => create();
  static $pb.PbList<ExtensionResponse> createRepeated() => $pb.PbList<ExtensionResponse>();
  @$core.pragma('dart2js:noInline')
  static ExtensionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExtensionResponse>(create);
  static ExtensionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class ListExtensionRequest extends $pb.GeneratedMessage {
  factory ListExtensionRequest() => create();
  ListExtensionRequest._() : super();
  factory ListExtensionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListExtensionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListExtensionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin_types.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListExtensionRequest clone() => ListExtensionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListExtensionRequest copyWith(void Function(ListExtensionRequest) updates) => super.copyWith((message) => updates(message as ListExtensionRequest)) as ListExtensionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListExtensionRequest create() => ListExtensionRequest._();
  ListExtensionRequest createEmptyInstance() => create();
  static $pb.PbList<ListExtensionRequest> createRepeated() => $pb.PbList<ListExtensionRequest>();
  @$core.pragma('dart2js:noInline')
  static ListExtensionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListExtensionRequest>(create);
  static ListExtensionRequest? _defaultInstance;
}

class ListExtensionResponse extends $pb.GeneratedMessage {
  factory ListExtensionResponse({
    $core.Iterable<Extension>? extensions,
  }) {
    final $result = create();
    if (extensions != null) {
      $result.extensions.addAll(extensions);
    }
    return $result;
  }
  ListExtensionResponse._() : super();
  factory ListExtensionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListExtensionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListExtensionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin_types.v1'), createEmptyInstance: create)
    ..pc<Extension>(1, _omitFieldNames ? '' : 'extensions', $pb.PbFieldType.PM, subBuilder: Extension.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListExtensionResponse clone() => ListExtensionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListExtensionResponse copyWith(void Function(ListExtensionResponse) updates) => super.copyWith((message) => updates(message as ListExtensionResponse)) as ListExtensionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListExtensionResponse create() => ListExtensionResponse._();
  ListExtensionResponse createEmptyInstance() => create();
  static $pb.PbList<ListExtensionResponse> createRepeated() => $pb.PbList<ListExtensionResponse>();
  @$core.pragma('dart2js:noInline')
  static ListExtensionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListExtensionResponse>(create);
  static ListExtensionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Extension> get extensions => $_getList(0);
}

class Extension extends $pb.GeneratedMessage {
  factory Extension({
    $fixnum.Int64? id,
    $core.String? extensionName,
    $fixnum.Int64? manifestVersion,
    $core.String? version,
    $core.String? mediaType,
    $core.String? repoUrl,
    $core.String? scriptUrl,
    $core.String? metaDataUrl,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (extensionName != null) {
      $result.extensionName = extensionName;
    }
    if (manifestVersion != null) {
      $result.manifestVersion = manifestVersion;
    }
    if (version != null) {
      $result.version = version;
    }
    if (mediaType != null) {
      $result.mediaType = mediaType;
    }
    if (repoUrl != null) {
      $result.repoUrl = repoUrl;
    }
    if (scriptUrl != null) {
      $result.scriptUrl = scriptUrl;
    }
    if (metaDataUrl != null) {
      $result.metaDataUrl = metaDataUrl;
    }
    return $result;
  }
  Extension._() : super();
  factory Extension.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Extension.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Extension', package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin_types.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'extensionName', protoName: 'extensionName')
    ..aInt64(3, _omitFieldNames ? '' : 'manifestVersion')
    ..aOS(4, _omitFieldNames ? '' : 'version')
    ..aOS(5, _omitFieldNames ? '' : 'mediaType')
    ..aOS(6, _omitFieldNames ? '' : 'repoUrl', protoName: 'repoUrl')
    ..aOS(7, _omitFieldNames ? '' : 'scriptUrl', protoName: 'scriptUrl')
    ..aOS(8, _omitFieldNames ? '' : 'metaDataUrl', protoName: 'metaDataUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Extension clone() => Extension()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Extension copyWith(void Function(Extension) updates) => super.copyWith((message) => updates(message as Extension)) as Extension;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Extension create() => Extension._();
  Extension createEmptyInstance() => create();
  static $pb.PbList<Extension> createRepeated() => $pb.PbList<Extension>();
  @$core.pragma('dart2js:noInline')
  static Extension getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Extension>(create);
  static Extension? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get extensionName => $_getSZ(1);
  @$pb.TagNumber(2)
  set extensionName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasExtensionName() => $_has(1);
  @$pb.TagNumber(2)
  void clearExtensionName() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get manifestVersion => $_getI64(2);
  @$pb.TagNumber(3)
  set manifestVersion($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasManifestVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearManifestVersion() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get version => $_getSZ(3);
  @$pb.TagNumber(4)
  set version($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearVersion() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get mediaType => $_getSZ(4);
  @$pb.TagNumber(5)
  set mediaType($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMediaType() => $_has(4);
  @$pb.TagNumber(5)
  void clearMediaType() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get repoUrl => $_getSZ(5);
  @$pb.TagNumber(6)
  set repoUrl($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRepoUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearRepoUrl() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get scriptUrl => $_getSZ(6);
  @$pb.TagNumber(7)
  set scriptUrl($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasScriptUrl() => $_has(6);
  @$pb.TagNumber(7)
  void clearScriptUrl() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get metaDataUrl => $_getSZ(7);
  @$pb.TagNumber(8)
  set metaDataUrl($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasMetaDataUrl() => $_has(7);
  @$pb.TagNumber(8)
  void clearMetaDataUrl() => clearField(8);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
