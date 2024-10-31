//
//  Generated code. Do not modify.
//  source: servers/manga/v1/manga.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use installRepoRequestDescriptor instead')
const InstallRepoRequest$json = {
  '1': 'InstallRepoRequest',
  '2': [
    {'1': 'repoJsonUrl', '3': 1, '4': 1, '5': 9, '10': 'repoJsonUrl'},
  ],
};

/// Descriptor for `InstallRepoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List installRepoRequestDescriptor = $convert.base64Decode(
    'ChJJbnN0YWxsUmVwb1JlcXVlc3QSIAoLcmVwb0pzb25VcmwYASABKAlSC3JlcG9Kc29uVXJs');

@$core.Deprecated('Use installRepoResponseDescriptor instead')
const InstallRepoResponse$json = {
  '1': 'InstallRepoResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `InstallRepoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List installRepoResponseDescriptor = $convert.base64Decode(
    'ChNJbnN0YWxsUmVwb1Jlc3BvbnNlEhYKBnN0YXR1cxgBIAEoCVIGc3RhdHVz');

@$core.Deprecated('Use repoRequestDescriptor instead')
const RepoRequest$json = {
  '1': 'RepoRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
  ],
};

/// Descriptor for `RepoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repoRequestDescriptor = $convert.base64Decode(
    'CgtSZXBvUmVxdWVzdBIOCgJpZBgBIAEoA1ICaWQ=');

@$core.Deprecated('Use repoResponseDescriptor instead')
const RepoResponse$json = {
  '1': 'RepoResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `RepoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repoResponseDescriptor = $convert.base64Decode(
    'CgxSZXBvUmVzcG9uc2USFgoGc3RhdHVzGAEgASgJUgZzdGF0dXM=');

@$core.Deprecated('Use listRepoRequestDescriptor instead')
const ListRepoRequest$json = {
  '1': 'ListRepoRequest',
};

/// Descriptor for `ListRepoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRepoRequestDescriptor = $convert.base64Decode(
    'Cg9MaXN0UmVwb1JlcXVlc3Q=');

@$core.Deprecated('Use listRepoResponseDescriptor instead')
const ListRepoResponse$json = {
  '1': 'ListRepoResponse',
  '2': [
    {'1': 'repos', '3': 1, '4': 3, '5': 11, '6': '.manga.v1.ExtensionRepo', '10': 'repos'},
  ],
};

/// Descriptor for `ListRepoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRepoResponseDescriptor = $convert.base64Decode(
    'ChBMaXN0UmVwb1Jlc3BvbnNlEi0KBXJlcG9zGAEgAygLMhcubWFuZ2EudjEuRXh0ZW5zaW9uUm'
    'Vwb1IFcmVwb3M=');

@$core.Deprecated('Use extensionRepoDescriptor instead')
const ExtensionRepo$json = {
  '1': 'ExtensionRepo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'repoName', '3': 2, '4': 1, '5': 9, '10': 'repoName'},
    {'1': 'repoUrl', '3': 3, '4': 1, '5': 9, '10': 'repoUrl'},
    {'1': 'jsonRepoUrl', '3': 4, '4': 1, '5': 9, '10': 'jsonRepoUrl'},
    {'1': 'version', '3': 5, '4': 1, '5': 9, '10': 'version'},
    {'1': 'manifest_version', '3': 6, '4': 1, '5': 3, '10': 'manifestVersion'},
  ],
};

/// Descriptor for `ExtensionRepo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List extensionRepoDescriptor = $convert.base64Decode(
    'Cg1FeHRlbnNpb25SZXBvEg4KAmlkGAEgASgJUgJpZBIaCghyZXBvTmFtZRgCIAEoCVIIcmVwb0'
    '5hbWUSGAoHcmVwb1VybBgDIAEoCVIHcmVwb1VybBIgCgtqc29uUmVwb1VybBgEIAEoCVILanNv'
    'blJlcG9VcmwSGAoHdmVyc2lvbhgFIAEoCVIHdmVyc2lvbhIpChBtYW5pZmVzdF92ZXJzaW9uGA'
    'YgASgDUg9tYW5pZmVzdFZlcnNpb24=');

@$core.Deprecated('Use extensionRequestDescriptor instead')
const ExtensionRequest$json = {
  '1': 'ExtensionRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
  ],
};

/// Descriptor for `ExtensionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List extensionRequestDescriptor = $convert.base64Decode(
    'ChBFeHRlbnNpb25SZXF1ZXN0Eg4KAmlkGAEgASgDUgJpZA==');

@$core.Deprecated('Use extensionResponseDescriptor instead')
const ExtensionResponse$json = {
  '1': 'ExtensionResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `ExtensionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List extensionResponseDescriptor = $convert.base64Decode(
    'ChFFeHRlbnNpb25SZXNwb25zZRIWCgZzdGF0dXMYASABKAlSBnN0YXR1cw==');

@$core.Deprecated('Use listExtensionRequestDescriptor instead')
const ListExtensionRequest$json = {
  '1': 'ListExtensionRequest',
};

/// Descriptor for `ListExtensionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listExtensionRequestDescriptor = $convert.base64Decode(
    'ChRMaXN0RXh0ZW5zaW9uUmVxdWVzdA==');

@$core.Deprecated('Use listExtensionResponseDescriptor instead')
const ListExtensionResponse$json = {
  '1': 'ListExtensionResponse',
  '2': [
    {'1': 'extensions', '3': 1, '4': 3, '5': 11, '6': '.manga.v1.Extension', '10': 'extensions'},
  ],
};

/// Descriptor for `ListExtensionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listExtensionResponseDescriptor = $convert.base64Decode(
    'ChVMaXN0RXh0ZW5zaW9uUmVzcG9uc2USMwoKZXh0ZW5zaW9ucxgBIAMoCzITLm1hbmdhLnYxLk'
    'V4dGVuc2lvblIKZXh0ZW5zaW9ucw==');

@$core.Deprecated('Use extensionDescriptor instead')
const Extension$json = {
  '1': 'Extension',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'extensionName', '3': 2, '4': 1, '5': 9, '10': 'extensionName'},
    {'1': 'manifest_version', '3': 3, '4': 1, '5': 3, '10': 'manifestVersion'},
    {'1': 'version', '3': 4, '4': 1, '5': 9, '10': 'version'},
    {'1': 'media_type', '3': 5, '4': 1, '5': 9, '10': 'mediaType'},
    {'1': 'repoUrl', '3': 6, '4': 1, '5': 9, '10': 'repoUrl'},
    {'1': 'scriptUrl', '3': 7, '4': 1, '5': 9, '10': 'scriptUrl'},
    {'1': 'metaDataUrl', '3': 8, '4': 1, '5': 9, '10': 'metaDataUrl'},
  ],
};

/// Descriptor for `Extension`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List extensionDescriptor = $convert.base64Decode(
    'CglFeHRlbnNpb24SDgoCaWQYASABKANSAmlkEiQKDWV4dGVuc2lvbk5hbWUYAiABKAlSDWV4dG'
    'Vuc2lvbk5hbWUSKQoQbWFuaWZlc3RfdmVyc2lvbhgDIAEoA1IPbWFuaWZlc3RWZXJzaW9uEhgK'
    'B3ZlcnNpb24YBCABKAlSB3ZlcnNpb24SHQoKbWVkaWFfdHlwZRgFIAEoCVIJbWVkaWFUeXBlEh'
    'gKB3JlcG9VcmwYBiABKAlSB3JlcG9VcmwSHAoJc2NyaXB0VXJsGAcgASgJUglzY3JpcHRVcmwS'
    'IAoLbWV0YURhdGFVcmwYCCABKAlSC21ldGFEYXRhVXJs');

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
    {'1': 'chapters', '3': 4, '4': 3, '5': 11, '6': '.manga.v1.MangaChapter', '10': 'chapters'},
  ],
};

/// Descriptor for `MangaMetaData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mangaMetaDataDescriptor = $convert.base64Decode(
    'Cg1NYW5nYU1ldGFEYXRhEhQKBXRpdGxlGAEgASgJUgV0aXRsZRIkCg1hbHRlcm5hdGVUaWxlGA'
    'IgASgJUg1hbHRlcm5hdGVUaWxlEjIKCGNoYXB0ZXJzGAQgAygLMhYubWFuZ2EudjEuTWFuZ2FD'
    'aGFwdGVyUghjaGFwdGVycw==');

@$core.Deprecated('Use mangaChapterDescriptor instead')
const MangaChapter$json = {
  '1': 'MangaChapter',
  '2': [
    {'1': 'chapterNumber', '3': 1, '4': 1, '5': 9, '10': 'chapterNumber'},
    {'1': 'chapterName', '3': 2, '4': 1, '5': 9, '10': 'chapterName'},
    {'1': 'releaseDateInISO6801', '3': 3, '4': 1, '5': 9, '10': 'releaseDateInISO6801'},
    {'1': 'pages', '3': 4, '4': 3, '5': 11, '6': '.manga.v1.MangaPage', '10': 'pages'},
  ],
};

/// Descriptor for `MangaChapter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mangaChapterDescriptor = $convert.base64Decode(
    'CgxNYW5nYUNoYXB0ZXISJAoNY2hhcHRlck51bWJlchgBIAEoCVINY2hhcHRlck51bWJlchIgCg'
    'tjaGFwdGVyTmFtZRgCIAEoCVILY2hhcHRlck5hbWUSMgoUcmVsZWFzZURhdGVJbklTTzY4MDEY'
    'AyABKAlSFHJlbGVhc2VEYXRlSW5JU082ODAxEikKBXBhZ2VzGAQgAygLMhMubWFuZ2EudjEuTW'
    'FuZ2FQYWdlUgVwYWdlcw==');

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

