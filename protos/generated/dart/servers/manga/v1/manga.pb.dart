//
//  Generated code. Do not modify.
//  source: servers/manga/v1/manga.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class NewPluginRequest extends $pb.GeneratedMessage {
  factory NewPluginRequest() => create();
  NewPluginRequest._() : super();
  factory NewPluginRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewPluginRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NewPluginRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'manga.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewPluginRequest clone() => NewPluginRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewPluginRequest copyWith(void Function(NewPluginRequest) updates) => super.copyWith((message) => updates(message as NewPluginRequest)) as NewPluginRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NewPluginRequest create() => NewPluginRequest._();
  NewPluginRequest createEmptyInstance() => create();
  static $pb.PbList<NewPluginRequest> createRepeated() => $pb.PbList<NewPluginRequest>();
  @$core.pragma('dart2js:noInline')
  static NewPluginRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewPluginRequest>(create);
  static NewPluginRequest? _defaultInstance;
}

class NewPluginResponse extends $pb.GeneratedMessage {
  factory NewPluginResponse() => create();
  NewPluginResponse._() : super();
  factory NewPluginResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewPluginResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NewPluginResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'manga.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewPluginResponse clone() => NewPluginResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewPluginResponse copyWith(void Function(NewPluginResponse) updates) => super.copyWith((message) => updates(message as NewPluginResponse)) as NewPluginResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NewPluginResponse create() => NewPluginResponse._();
  NewPluginResponse createEmptyInstance() => create();
  static $pb.PbList<NewPluginResponse> createRepeated() => $pb.PbList<NewPluginResponse>();
  @$core.pragma('dart2js:noInline')
  static NewPluginResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewPluginResponse>(create);
  static NewPluginResponse? _defaultInstance;
}

class DeletePluginRequest extends $pb.GeneratedMessage {
  factory DeletePluginRequest() => create();
  DeletePluginRequest._() : super();
  factory DeletePluginRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeletePluginRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeletePluginRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'manga.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeletePluginRequest clone() => DeletePluginRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeletePluginRequest copyWith(void Function(DeletePluginRequest) updates) => super.copyWith((message) => updates(message as DeletePluginRequest)) as DeletePluginRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeletePluginRequest create() => DeletePluginRequest._();
  DeletePluginRequest createEmptyInstance() => create();
  static $pb.PbList<DeletePluginRequest> createRepeated() => $pb.PbList<DeletePluginRequest>();
  @$core.pragma('dart2js:noInline')
  static DeletePluginRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeletePluginRequest>(create);
  static DeletePluginRequest? _defaultInstance;
}

class DeletePluginResponse extends $pb.GeneratedMessage {
  factory DeletePluginResponse() => create();
  DeletePluginResponse._() : super();
  factory DeletePluginResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeletePluginResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeletePluginResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'manga.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeletePluginResponse clone() => DeletePluginResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeletePluginResponse copyWith(void Function(DeletePluginResponse) updates) => super.copyWith((message) => updates(message as DeletePluginResponse)) as DeletePluginResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeletePluginResponse create() => DeletePluginResponse._();
  DeletePluginResponse createEmptyInstance() => create();
  static $pb.PbList<DeletePluginResponse> createRepeated() => $pb.PbList<DeletePluginResponse>();
  @$core.pragma('dart2js:noInline')
  static DeletePluginResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeletePluginResponse>(create);
  static DeletePluginResponse? _defaultInstance;
}

class SearchPluginRequest extends $pb.GeneratedMessage {
  factory SearchPluginRequest({
    $core.String? searchQuery,
    $core.String? pluginID,
  }) {
    final $result = create();
    if (searchQuery != null) {
      $result.searchQuery = searchQuery;
    }
    if (pluginID != null) {
      $result.pluginID = pluginID;
    }
    return $result;
  }
  SearchPluginRequest._() : super();
  factory SearchPluginRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchPluginRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchPluginRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'manga.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'searchQuery', protoName: 'searchQuery')
    ..aOS(2, _omitFieldNames ? '' : 'pluginID', protoName: 'pluginID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchPluginRequest clone() => SearchPluginRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchPluginRequest copyWith(void Function(SearchPluginRequest) updates) => super.copyWith((message) => updates(message as SearchPluginRequest)) as SearchPluginRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchPluginRequest create() => SearchPluginRequest._();
  SearchPluginRequest createEmptyInstance() => create();
  static $pb.PbList<SearchPluginRequest> createRepeated() => $pb.PbList<SearchPluginRequest>();
  @$core.pragma('dart2js:noInline')
  static SearchPluginRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchPluginRequest>(create);
  static SearchPluginRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get searchQuery => $_getSZ(0);
  @$pb.TagNumber(1)
  set searchQuery($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSearchQuery() => $_has(0);
  @$pb.TagNumber(1)
  void clearSearchQuery() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pluginID => $_getSZ(1);
  @$pb.TagNumber(2)
  set pluginID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPluginID() => $_has(1);
  @$pb.TagNumber(2)
  void clearPluginID() => clearField(2);
}

class SearchPluginResponse extends $pb.GeneratedMessage {
  factory SearchPluginResponse() => create();
  SearchPluginResponse._() : super();
  factory SearchPluginResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchPluginResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchPluginResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'manga.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchPluginResponse clone() => SearchPluginResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchPluginResponse copyWith(void Function(SearchPluginResponse) updates) => super.copyWith((message) => updates(message as SearchPluginResponse)) as SearchPluginResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchPluginResponse create() => SearchPluginResponse._();
  SearchPluginResponse createEmptyInstance() => create();
  static $pb.PbList<SearchPluginResponse> createRepeated() => $pb.PbList<SearchPluginResponse>();
  @$core.pragma('dart2js:noInline')
  static SearchPluginResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchPluginResponse>(create);
  static SearchPluginResponse? _defaultInstance;
}

class RefreshMangaResponse extends $pb.GeneratedMessage {
  factory RefreshMangaResponse() => create();
  RefreshMangaResponse._() : super();
  factory RefreshMangaResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RefreshMangaResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RefreshMangaResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'manga.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RefreshMangaResponse clone() => RefreshMangaResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RefreshMangaResponse copyWith(void Function(RefreshMangaResponse) updates) => super.copyWith((message) => updates(message as RefreshMangaResponse)) as RefreshMangaResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RefreshMangaResponse create() => RefreshMangaResponse._();
  RefreshMangaResponse createEmptyInstance() => create();
  static $pb.PbList<RefreshMangaResponse> createRepeated() => $pb.PbList<RefreshMangaResponse>();
  @$core.pragma('dart2js:noInline')
  static RefreshMangaResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RefreshMangaResponse>(create);
  static RefreshMangaResponse? _defaultInstance;
}

class RefreshMangaRequest extends $pb.GeneratedMessage {
  factory RefreshMangaRequest() => create();
  RefreshMangaRequest._() : super();
  factory RefreshMangaRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RefreshMangaRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RefreshMangaRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'manga.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RefreshMangaRequest clone() => RefreshMangaRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RefreshMangaRequest copyWith(void Function(RefreshMangaRequest) updates) => super.copyWith((message) => updates(message as RefreshMangaRequest)) as RefreshMangaRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RefreshMangaRequest create() => RefreshMangaRequest._();
  RefreshMangaRequest createEmptyInstance() => create();
  static $pb.PbList<RefreshMangaRequest> createRepeated() => $pb.PbList<RefreshMangaRequest>();
  @$core.pragma('dart2js:noInline')
  static RefreshMangaRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RefreshMangaRequest>(create);
  static RefreshMangaRequest? _defaultInstance;
}

/// todo add more metadata fields
class MangaMetaData extends $pb.GeneratedMessage {
  factory MangaMetaData({
    $core.String? title,
    $core.String? alternateTile,
    $core.Iterable<MangaChapter>? chapters,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (alternateTile != null) {
      $result.alternateTile = alternateTile;
    }
    if (chapters != null) {
      $result.chapters.addAll(chapters);
    }
    return $result;
  }
  MangaMetaData._() : super();
  factory MangaMetaData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MangaMetaData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MangaMetaData', package: const $pb.PackageName(_omitMessageNames ? '' : 'manga.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'alternateTile', protoName: 'alternateTile')
    ..pc<MangaChapter>(4, _omitFieldNames ? '' : 'chapters', $pb.PbFieldType.PM, subBuilder: MangaChapter.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MangaMetaData clone() => MangaMetaData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MangaMetaData copyWith(void Function(MangaMetaData) updates) => super.copyWith((message) => updates(message as MangaMetaData)) as MangaMetaData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MangaMetaData create() => MangaMetaData._();
  MangaMetaData createEmptyInstance() => create();
  static $pb.PbList<MangaMetaData> createRepeated() => $pb.PbList<MangaMetaData>();
  @$core.pragma('dart2js:noInline')
  static MangaMetaData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MangaMetaData>(create);
  static MangaMetaData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  /// each name should be separated by a space
  @$pb.TagNumber(2)
  $core.String get alternateTile => $_getSZ(1);
  @$pb.TagNumber(2)
  set alternateTile($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAlternateTile() => $_has(1);
  @$pb.TagNumber(2)
  void clearAlternateTile() => clearField(2);

  @$pb.TagNumber(4)
  $core.List<MangaChapter> get chapters => $_getList(2);
}

class MangaChapter extends $pb.GeneratedMessage {
  factory MangaChapter({
    $core.String? chapterNumber,
    $core.String? chapterName,
    $core.String? releaseDateInISO6801,
    $core.Iterable<MangaPage>? pages,
  }) {
    final $result = create();
    if (chapterNumber != null) {
      $result.chapterNumber = chapterNumber;
    }
    if (chapterName != null) {
      $result.chapterName = chapterName;
    }
    if (releaseDateInISO6801 != null) {
      $result.releaseDateInISO6801 = releaseDateInISO6801;
    }
    if (pages != null) {
      $result.pages.addAll(pages);
    }
    return $result;
  }
  MangaChapter._() : super();
  factory MangaChapter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MangaChapter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MangaChapter', package: const $pb.PackageName(_omitMessageNames ? '' : 'manga.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'chapterNumber', protoName: 'chapterNumber')
    ..aOS(2, _omitFieldNames ? '' : 'chapterName', protoName: 'chapterName')
    ..aOS(3, _omitFieldNames ? '' : 'releaseDateInISO6801', protoName: 'releaseDateInISO6801')
    ..pc<MangaPage>(4, _omitFieldNames ? '' : 'pages', $pb.PbFieldType.PM, subBuilder: MangaPage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MangaChapter clone() => MangaChapter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MangaChapter copyWith(void Function(MangaChapter) updates) => super.copyWith((message) => updates(message as MangaChapter)) as MangaChapter;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MangaChapter create() => MangaChapter._();
  MangaChapter createEmptyInstance() => create();
  static $pb.PbList<MangaChapter> createRepeated() => $pb.PbList<MangaChapter>();
  @$core.pragma('dart2js:noInline')
  static MangaChapter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MangaChapter>(create);
  static MangaChapter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get chapterNumber => $_getSZ(0);
  @$pb.TagNumber(1)
  set chapterNumber($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChapterNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearChapterNumber() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get chapterName => $_getSZ(1);
  @$pb.TagNumber(2)
  set chapterName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChapterName() => $_has(1);
  @$pb.TagNumber(2)
  void clearChapterName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get releaseDateInISO6801 => $_getSZ(2);
  @$pb.TagNumber(3)
  set releaseDateInISO6801($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReleaseDateInISO6801() => $_has(2);
  @$pb.TagNumber(3)
  void clearReleaseDateInISO6801() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<MangaPage> get pages => $_getList(3);
}

class MangaPage extends $pb.GeneratedMessage {
  factory MangaPage({
    $fixnum.Int64? page,
    $core.String? url,
  }) {
    final $result = create();
    if (page != null) {
      $result.page = page;
    }
    if (url != null) {
      $result.url = url;
    }
    return $result;
  }
  MangaPage._() : super();
  factory MangaPage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MangaPage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MangaPage', package: const $pb.PackageName(_omitMessageNames ? '' : 'manga.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'page')
    ..aOS(2, _omitFieldNames ? '' : 'url')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MangaPage clone() => MangaPage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MangaPage copyWith(void Function(MangaPage) updates) => super.copyWith((message) => updates(message as MangaPage)) as MangaPage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MangaPage create() => MangaPage._();
  MangaPage createEmptyInstance() => create();
  static $pb.PbList<MangaPage> createRepeated() => $pb.PbList<MangaPage>();
  @$core.pragma('dart2js:noInline')
  static MangaPage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MangaPage>(create);
  static MangaPage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get page => $_getI64(0);
  @$pb.TagNumber(1)
  set page($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(2)
  set url($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrl() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
