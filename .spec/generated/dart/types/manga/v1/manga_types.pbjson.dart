//
//  Generated code. Do not modify.
//  source: types/manga/v1/manga_types.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use searchPluginRequestDescriptor instead')
const SearchPluginRequest$json = {
  '1': 'SearchPluginRequest',
  '2': [
    {'1': 'searchQuery', '3': 1, '4': 1, '5': 9, '10': 'searchQuery'},
    {'1': 'pluginID', '3': 2, '4': 1, '5': 9, '10': 'pluginID'},
  ],
};

/// Descriptor for `SearchPluginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchPluginRequestDescriptor = $convert.base64Decode(
    'ChNTZWFyY2hQbHVnaW5SZXF1ZXN0EiAKC3NlYXJjaFF1ZXJ5GAEgASgJUgtzZWFyY2hRdWVyeR'
    'IaCghwbHVnaW5JRBgCIAEoCVIIcGx1Z2luSUQ=');

@$core.Deprecated('Use searchPluginResponseDescriptor instead')
const SearchPluginResponse$json = {
  '1': 'SearchPluginResponse',
  '2': [
    {'1': 'pong', '3': 1, '4': 1, '5': 9, '10': 'pong'},
  ],
};

/// Descriptor for `SearchPluginResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchPluginResponseDescriptor = $convert.base64Decode(
    'ChRTZWFyY2hQbHVnaW5SZXNwb25zZRISCgRwb25nGAEgASgJUgRwb25n');

@$core.Deprecated('Use refreshMangaResponseDescriptor instead')
const RefreshMangaResponse$json = {
  '1': 'RefreshMangaResponse',
};

/// Descriptor for `RefreshMangaResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshMangaResponseDescriptor = $convert.base64Decode(
    'ChRSZWZyZXNoTWFuZ2FSZXNwb25zZQ==');

@$core.Deprecated('Use refreshMangaRequestDescriptor instead')
const RefreshMangaRequest$json = {
  '1': 'RefreshMangaRequest',
};

/// Descriptor for `RefreshMangaRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshMangaRequestDescriptor = $convert.base64Decode(
    'ChNSZWZyZXNoTWFuZ2FSZXF1ZXN0');

@$core.Deprecated('Use mangaMetaDataDescriptor instead')
const MangaMetaData$json = {
  '1': 'MangaMetaData',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'alternateTile', '3': 2, '4': 1, '5': 9, '10': 'alternateTile'},
    {'1': 'chapters', '3': 4, '4': 3, '5': 11, '6': '.manga_types.v1.MangaChapter', '10': 'chapters'},
  ],
};

/// Descriptor for `MangaMetaData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mangaMetaDataDescriptor = $convert.base64Decode(
    'Cg1NYW5nYU1ldGFEYXRhEhQKBXRpdGxlGAEgASgJUgV0aXRsZRIkCg1hbHRlcm5hdGVUaWxlGA'
    'IgASgJUg1hbHRlcm5hdGVUaWxlEjgKCGNoYXB0ZXJzGAQgAygLMhwubWFuZ2FfdHlwZXMudjEu'
    'TWFuZ2FDaGFwdGVyUghjaGFwdGVycw==');

@$core.Deprecated('Use mangaChapterDescriptor instead')
const MangaChapter$json = {
  '1': 'MangaChapter',
  '2': [
    {'1': 'chapterNumber', '3': 1, '4': 1, '5': 9, '10': 'chapterNumber'},
    {'1': 'chapterName', '3': 2, '4': 1, '5': 9, '10': 'chapterName'},
    {'1': 'releaseDateInISO6801', '3': 3, '4': 1, '5': 9, '10': 'releaseDateInISO6801'},
    {'1': 'pages', '3': 4, '4': 3, '5': 11, '6': '.manga_types.v1.MangaPage', '10': 'pages'},
  ],
};

/// Descriptor for `MangaChapter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mangaChapterDescriptor = $convert.base64Decode(
    'CgxNYW5nYUNoYXB0ZXISJAoNY2hhcHRlck51bWJlchgBIAEoCVINY2hhcHRlck51bWJlchIgCg'
    'tjaGFwdGVyTmFtZRgCIAEoCVILY2hhcHRlck5hbWUSMgoUcmVsZWFzZURhdGVJbklTTzY4MDEY'
    'AyABKAlSFHJlbGVhc2VEYXRlSW5JU082ODAxEi8KBXBhZ2VzGAQgAygLMhkubWFuZ2FfdHlwZX'
    'MudjEuTWFuZ2FQYWdlUgVwYWdlcw==');

@$core.Deprecated('Use mangaPageDescriptor instead')
const MangaPage$json = {
  '1': 'MangaPage',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 3, '10': 'page'},
    {'1': 'url', '3': 2, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `MangaPage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mangaPageDescriptor = $convert.base64Decode(
    'CglNYW5nYVBhZ2USEgoEcGFnZRgBIAEoA1IEcGFnZRIQCgN1cmwYAiABKAlSA3VybA==');

