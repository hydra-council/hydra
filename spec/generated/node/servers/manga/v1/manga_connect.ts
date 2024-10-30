// @generated by protoc-gen-connect-es v1.6.1 with parameter "target=ts"
// @generated from file servers/manga/v1/manga.proto (package manga.v1, syntax proto3)
/* eslint-disable */
// @ts-nocheck

import { ExtensionRequest, ExtensionResponse, InstallRepoRequest, InstallRepoResponse, ListExtensionRequest, ListExtensionResponse, ListRepoRequest, ListRepoResponse, RefreshMangaRequest, RefreshMangaResponse, RepoRequest, RepoResponse, SearchPluginRequest, SearchPluginResponse } from "./manga_pb.js";
import { MethodKind } from "@bufbuild/protobuf";

/**
 * @generated from service manga.v1.MangaService
 */
export const MangaService = {
  typeName: "manga.v1.MangaService",
  methods: {
    /**
     * search plugin
     *
     * @generated from rpc manga.v1.MangaService.SearchPlugin
     */
    searchPlugin: {
      name: "SearchPlugin",
      I: SearchPluginRequest,
      O: SearchPluginResponse,
      kind: MethodKind.Unary,
    },
    /**
     * refresh manga
     *
     * @generated from rpc manga.v1.MangaService.RefreshManga
     */
    refreshManga: {
      name: "RefreshManga",
      I: RefreshMangaRequest,
      O: RefreshMangaResponse,
      kind: MethodKind.Unary,
    },
    /**
     * //////////////////////////////////////////////////////////////////////////////////////
     * repo management
     *
     * @generated from rpc manga.v1.MangaService.InstallRepo
     */
    installRepo: {
      name: "InstallRepo",
      I: InstallRepoRequest,
      O: InstallRepoResponse,
      kind: MethodKind.Unary,
    },
    /**
     * @generated from rpc manga.v1.MangaService.UnInstallRepo
     */
    unInstallRepo: {
      name: "UnInstallRepo",
      I: RepoRequest,
      O: RepoResponse,
      kind: MethodKind.Unary,
    },
    /**
     * @generated from rpc manga.v1.MangaService.UpdateRepo
     */
    updateRepo: {
      name: "UpdateRepo",
      I: RepoRequest,
      O: RepoResponse,
      kind: MethodKind.Unary,
    },
    /**
     * @generated from rpc manga.v1.MangaService.ListRepos
     */
    listRepos: {
      name: "ListRepos",
      I: ListRepoRequest,
      O: ListRepoResponse,
      kind: MethodKind.Unary,
    },
    /**
     * extension management
     *
     * @generated from rpc manga.v1.MangaService.InstallExtension
     */
    installExtension: {
      name: "InstallExtension",
      I: ExtensionRequest,
      O: ExtensionResponse,
      kind: MethodKind.Unary,
    },
    /**
     * @generated from rpc manga.v1.MangaService.UnInstallExtension
     */
    unInstallExtension: {
      name: "UnInstallExtension",
      I: ExtensionRequest,
      O: ExtensionResponse,
      kind: MethodKind.Unary,
    },
    /**
     * @generated from rpc manga.v1.MangaService.UpdateExtension
     */
    updateExtension: {
      name: "UpdateExtension",
      I: ExtensionRequest,
      O: ExtensionResponse,
      kind: MethodKind.Unary,
    },
    /**
     * @generated from rpc manga.v1.MangaService.ListExtensions
     */
    listExtensions: {
      name: "ListExtensions",
      I: ListExtensionRequest,
      O: ListExtensionResponse,
      kind: MethodKind.Unary,
    },
  }
} as const;

