# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# NO CHECKED-IN PROTOBUF GENCODE
# source: manga/v1/manga.proto
# Protobuf Python Version: 5.27.2
"""Generated protocol buffer code."""
from google.protobuf import descriptor as _descriptor
from google.protobuf import descriptor_pool as _descriptor_pool
from google.protobuf import runtime_version as _runtime_version
from google.protobuf import symbol_database as _symbol_database
from google.protobuf.internal import builder as _builder
_runtime_version.ValidateProtobufRuntimeVersion(
    _runtime_version.Domain.PUBLIC,
    5,
    27,
    2,
    '',
    'manga/v1/manga.proto'
)
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()


from types.manga.v1 import manga_types_pb2 as types_dot_manga_dot_v1_dot_manga__types__pb2
from types.plugin.v1 import plugin_types_pb2 as types_dot_plugin_dot_v1_dot_plugin__types__pb2


DESCRIPTOR = _descriptor_pool.Default().AddSerializedFile(b'\n\x14manga/v1/manga.proto\x12\x08manga.v1\x1a types/manga/v1/manga_types.proto\x1a\"types/plugin/v1/plugin_types.proto2\xa1\x02\n\x0cMangaService\x12W\n\nLoadPlugin\x12\".plugin_types.v1.LoadPluginRequest\x1a#.plugin_types.v1.LoadPluginResponse\"\x00\x12[\n\x0cSearchPlugin\x12#.manga_types.v1.SearchPluginRequest\x1a$.manga_types.v1.SearchPluginResponse\"\x00\x12[\n\x0cRefreshManga\x12#.manga_types.v1.RefreshMangaRequest\x1a$.manga_types.v1.RefreshMangaResponse\"\x00\x42\x1aZ\x18hydra/generated/manga/v1b\x06proto3')

_globals = globals()
_builder.BuildMessageAndEnumDescriptors(DESCRIPTOR, _globals)
_builder.BuildTopDescriptorsAndMessages(DESCRIPTOR, 'manga.v1.manga_pb2', _globals)
if not _descriptor._USE_C_DESCRIPTORS:
  _globals['DESCRIPTOR']._loaded_options = None
  _globals['DESCRIPTOR']._serialized_options = b'Z\030hydra/generated/manga/v1'
  _globals['_MANGASERVICE']._serialized_start=105
  _globals['_MANGASERVICE']._serialized_end=394
# @@protoc_insertion_point(module_scope)