// Code generated by protoc-gen-connect-go. DO NOT EDIT.
//
// Source: servers/manga/v1/manga.proto

package v1connect

import (
	connect "connectrpc.com/connect"
	context "context"
	errors "errors"
	v1 "hydra/generated/servers/manga/v1"
	http "net/http"
	strings "strings"
)

// This is a compile-time assertion to ensure that this generated file and the connect package are
// compatible. If you get a compiler error that this constant is not defined, this code was
// generated with a version of connect newer than the one compiled into your binary. You can fix the
// problem by either regenerating this code with an older version of connect or updating the connect
// version compiled into your binary.
const _ = connect.IsAtLeastVersion1_13_0

const (
	// MangaServiceName is the fully-qualified name of the MangaService service.
	MangaServiceName = "manga.v1.MangaService"
)

// These constants are the fully-qualified names of the RPCs defined in this package. They're
// exposed at runtime as Spec.Procedure and as the final two segments of the HTTP route.
//
// Note that these are different from the fully-qualified method names used by
// google.golang.org/protobuf/reflect/protoreflect. To convert from these constants to
// reflection-formatted method names, remove the leading slash and convert the remaining slash to a
// period.
const (
	// MangaServiceSearchPluginProcedure is the fully-qualified name of the MangaService's SearchPlugin
	// RPC.
	MangaServiceSearchPluginProcedure = "/manga.v1.MangaService/SearchPlugin"
	// MangaServiceRefreshMangaProcedure is the fully-qualified name of the MangaService's RefreshManga
	// RPC.
	MangaServiceRefreshMangaProcedure = "/manga.v1.MangaService/RefreshManga"
	// MangaServiceInstallRepoProcedure is the fully-qualified name of the MangaService's InstallRepo
	// RPC.
	MangaServiceInstallRepoProcedure = "/manga.v1.MangaService/InstallRepo"
	// MangaServiceUnInstallRepoProcedure is the fully-qualified name of the MangaService's
	// UnInstallRepo RPC.
	MangaServiceUnInstallRepoProcedure = "/manga.v1.MangaService/UnInstallRepo"
	// MangaServiceUpdateRepoProcedure is the fully-qualified name of the MangaService's UpdateRepo RPC.
	MangaServiceUpdateRepoProcedure = "/manga.v1.MangaService/UpdateRepo"
	// MangaServiceListReposProcedure is the fully-qualified name of the MangaService's ListRepos RPC.
	MangaServiceListReposProcedure = "/manga.v1.MangaService/ListRepos"
	// MangaServiceInstallExtensionProcedure is the fully-qualified name of the MangaService's
	// InstallExtension RPC.
	MangaServiceInstallExtensionProcedure = "/manga.v1.MangaService/InstallExtension"
	// MangaServiceUnInstallExtensionProcedure is the fully-qualified name of the MangaService's
	// UnInstallExtension RPC.
	MangaServiceUnInstallExtensionProcedure = "/manga.v1.MangaService/UnInstallExtension"
	// MangaServiceUpdateExtensionProcedure is the fully-qualified name of the MangaService's
	// UpdateExtension RPC.
	MangaServiceUpdateExtensionProcedure = "/manga.v1.MangaService/UpdateExtension"
	// MangaServiceListExtensionsProcedure is the fully-qualified name of the MangaService's
	// ListExtensions RPC.
	MangaServiceListExtensionsProcedure = "/manga.v1.MangaService/ListExtensions"
)

// These variables are the protoreflect.Descriptor objects for the RPCs defined in this package.
var (
	mangaServiceServiceDescriptor                  = v1.File_servers_manga_v1_manga_proto.Services().ByName("MangaService")
	mangaServiceSearchPluginMethodDescriptor       = mangaServiceServiceDescriptor.Methods().ByName("SearchPlugin")
	mangaServiceRefreshMangaMethodDescriptor       = mangaServiceServiceDescriptor.Methods().ByName("RefreshManga")
	mangaServiceInstallRepoMethodDescriptor        = mangaServiceServiceDescriptor.Methods().ByName("InstallRepo")
	mangaServiceUnInstallRepoMethodDescriptor      = mangaServiceServiceDescriptor.Methods().ByName("UnInstallRepo")
	mangaServiceUpdateRepoMethodDescriptor         = mangaServiceServiceDescriptor.Methods().ByName("UpdateRepo")
	mangaServiceListReposMethodDescriptor          = mangaServiceServiceDescriptor.Methods().ByName("ListRepos")
	mangaServiceInstallExtensionMethodDescriptor   = mangaServiceServiceDescriptor.Methods().ByName("InstallExtension")
	mangaServiceUnInstallExtensionMethodDescriptor = mangaServiceServiceDescriptor.Methods().ByName("UnInstallExtension")
	mangaServiceUpdateExtensionMethodDescriptor    = mangaServiceServiceDescriptor.Methods().ByName("UpdateExtension")
	mangaServiceListExtensionsMethodDescriptor     = mangaServiceServiceDescriptor.Methods().ByName("ListExtensions")
)

// MangaServiceClient is a client for the manga.v1.MangaService service.
type MangaServiceClient interface {
	// //////////////////////////////////////////////////////////////////////////////////////
	// search plugin
	SearchPlugin(context.Context, *connect.Request[v1.SearchPluginRequest]) (*connect.Response[v1.SearchPluginResponse], error)
	// refresh manga
	RefreshManga(context.Context, *connect.Request[v1.RefreshMangaRequest]) (*connect.Response[v1.RefreshMangaResponse], error)
	// //////////////////////////////////////////////////////////////////////////////////////
	// repo management
	InstallRepo(context.Context, *connect.Request[v1.InstallRepoRequest]) (*connect.Response[v1.InstallRepoResponse], error)
	UnInstallRepo(context.Context, *connect.Request[v1.RepoRequest]) (*connect.Response[v1.RepoResponse], error)
	UpdateRepo(context.Context, *connect.Request[v1.RepoRequest]) (*connect.Response[v1.RepoResponse], error)
	ListRepos(context.Context, *connect.Request[v1.ListRepoRequest]) (*connect.Response[v1.ListRepoResponse], error)
	// //////////////////////////////////////////////////////////////////////////////////////
	// extension management
	InstallExtension(context.Context, *connect.Request[v1.ExtensionRequest]) (*connect.Response[v1.ExtensionResponse], error)
	UnInstallExtension(context.Context, *connect.Request[v1.ExtensionRequest]) (*connect.Response[v1.ExtensionResponse], error)
	UpdateExtension(context.Context, *connect.Request[v1.ExtensionRequest]) (*connect.Response[v1.ExtensionResponse], error)
	ListExtensions(context.Context, *connect.Request[v1.ListExtensionRequest]) (*connect.Response[v1.ListExtensionResponse], error)
}

// NewMangaServiceClient constructs a client for the manga.v1.MangaService service. By default, it
// uses the Connect protocol with the binary Protobuf Codec, asks for gzipped responses, and sends
// uncompressed requests. To use the gRPC or gRPC-Web protocols, supply the connect.WithGRPC() or
// connect.WithGRPCWeb() options.
//
// The URL supplied here should be the base URL for the Connect or gRPC server (for example,
// http://api.acme.com or https://acme.com/grpc).
func NewMangaServiceClient(httpClient connect.HTTPClient, baseURL string, opts ...connect.ClientOption) MangaServiceClient {
	baseURL = strings.TrimRight(baseURL, "/")
	return &mangaServiceClient{
		searchPlugin: connect.NewClient[v1.SearchPluginRequest, v1.SearchPluginResponse](
			httpClient,
			baseURL+MangaServiceSearchPluginProcedure,
			connect.WithSchema(mangaServiceSearchPluginMethodDescriptor),
			connect.WithClientOptions(opts...),
		),
		refreshManga: connect.NewClient[v1.RefreshMangaRequest, v1.RefreshMangaResponse](
			httpClient,
			baseURL+MangaServiceRefreshMangaProcedure,
			connect.WithSchema(mangaServiceRefreshMangaMethodDescriptor),
			connect.WithClientOptions(opts...),
		),
		installRepo: connect.NewClient[v1.InstallRepoRequest, v1.InstallRepoResponse](
			httpClient,
			baseURL+MangaServiceInstallRepoProcedure,
			connect.WithSchema(mangaServiceInstallRepoMethodDescriptor),
			connect.WithClientOptions(opts...),
		),
		unInstallRepo: connect.NewClient[v1.RepoRequest, v1.RepoResponse](
			httpClient,
			baseURL+MangaServiceUnInstallRepoProcedure,
			connect.WithSchema(mangaServiceUnInstallRepoMethodDescriptor),
			connect.WithClientOptions(opts...),
		),
		updateRepo: connect.NewClient[v1.RepoRequest, v1.RepoResponse](
			httpClient,
			baseURL+MangaServiceUpdateRepoProcedure,
			connect.WithSchema(mangaServiceUpdateRepoMethodDescriptor),
			connect.WithClientOptions(opts...),
		),
		listRepos: connect.NewClient[v1.ListRepoRequest, v1.ListRepoResponse](
			httpClient,
			baseURL+MangaServiceListReposProcedure,
			connect.WithSchema(mangaServiceListReposMethodDescriptor),
			connect.WithClientOptions(opts...),
		),
		installExtension: connect.NewClient[v1.ExtensionRequest, v1.ExtensionResponse](
			httpClient,
			baseURL+MangaServiceInstallExtensionProcedure,
			connect.WithSchema(mangaServiceInstallExtensionMethodDescriptor),
			connect.WithClientOptions(opts...),
		),
		unInstallExtension: connect.NewClient[v1.ExtensionRequest, v1.ExtensionResponse](
			httpClient,
			baseURL+MangaServiceUnInstallExtensionProcedure,
			connect.WithSchema(mangaServiceUnInstallExtensionMethodDescriptor),
			connect.WithClientOptions(opts...),
		),
		updateExtension: connect.NewClient[v1.ExtensionRequest, v1.ExtensionResponse](
			httpClient,
			baseURL+MangaServiceUpdateExtensionProcedure,
			connect.WithSchema(mangaServiceUpdateExtensionMethodDescriptor),
			connect.WithClientOptions(opts...),
		),
		listExtensions: connect.NewClient[v1.ListExtensionRequest, v1.ListExtensionResponse](
			httpClient,
			baseURL+MangaServiceListExtensionsProcedure,
			connect.WithSchema(mangaServiceListExtensionsMethodDescriptor),
			connect.WithClientOptions(opts...),
		),
	}
}

// mangaServiceClient implements MangaServiceClient.
type mangaServiceClient struct {
	searchPlugin       *connect.Client[v1.SearchPluginRequest, v1.SearchPluginResponse]
	refreshManga       *connect.Client[v1.RefreshMangaRequest, v1.RefreshMangaResponse]
	installRepo        *connect.Client[v1.InstallRepoRequest, v1.InstallRepoResponse]
	unInstallRepo      *connect.Client[v1.RepoRequest, v1.RepoResponse]
	updateRepo         *connect.Client[v1.RepoRequest, v1.RepoResponse]
	listRepos          *connect.Client[v1.ListRepoRequest, v1.ListRepoResponse]
	installExtension   *connect.Client[v1.ExtensionRequest, v1.ExtensionResponse]
	unInstallExtension *connect.Client[v1.ExtensionRequest, v1.ExtensionResponse]
	updateExtension    *connect.Client[v1.ExtensionRequest, v1.ExtensionResponse]
	listExtensions     *connect.Client[v1.ListExtensionRequest, v1.ListExtensionResponse]
}

// SearchPlugin calls manga.v1.MangaService.SearchPlugin.
func (c *mangaServiceClient) SearchPlugin(ctx context.Context, req *connect.Request[v1.SearchPluginRequest]) (*connect.Response[v1.SearchPluginResponse], error) {
	return c.searchPlugin.CallUnary(ctx, req)
}

// RefreshManga calls manga.v1.MangaService.RefreshManga.
func (c *mangaServiceClient) RefreshManga(ctx context.Context, req *connect.Request[v1.RefreshMangaRequest]) (*connect.Response[v1.RefreshMangaResponse], error) {
	return c.refreshManga.CallUnary(ctx, req)
}

// InstallRepo calls manga.v1.MangaService.InstallRepo.
func (c *mangaServiceClient) InstallRepo(ctx context.Context, req *connect.Request[v1.InstallRepoRequest]) (*connect.Response[v1.InstallRepoResponse], error) {
	return c.installRepo.CallUnary(ctx, req)
}

// UnInstallRepo calls manga.v1.MangaService.UnInstallRepo.
func (c *mangaServiceClient) UnInstallRepo(ctx context.Context, req *connect.Request[v1.RepoRequest]) (*connect.Response[v1.RepoResponse], error) {
	return c.unInstallRepo.CallUnary(ctx, req)
}

// UpdateRepo calls manga.v1.MangaService.UpdateRepo.
func (c *mangaServiceClient) UpdateRepo(ctx context.Context, req *connect.Request[v1.RepoRequest]) (*connect.Response[v1.RepoResponse], error) {
	return c.updateRepo.CallUnary(ctx, req)
}

// ListRepos calls manga.v1.MangaService.ListRepos.
func (c *mangaServiceClient) ListRepos(ctx context.Context, req *connect.Request[v1.ListRepoRequest]) (*connect.Response[v1.ListRepoResponse], error) {
	return c.listRepos.CallUnary(ctx, req)
}

// InstallExtension calls manga.v1.MangaService.InstallExtension.
func (c *mangaServiceClient) InstallExtension(ctx context.Context, req *connect.Request[v1.ExtensionRequest]) (*connect.Response[v1.ExtensionResponse], error) {
	return c.installExtension.CallUnary(ctx, req)
}

// UnInstallExtension calls manga.v1.MangaService.UnInstallExtension.
func (c *mangaServiceClient) UnInstallExtension(ctx context.Context, req *connect.Request[v1.ExtensionRequest]) (*connect.Response[v1.ExtensionResponse], error) {
	return c.unInstallExtension.CallUnary(ctx, req)
}

// UpdateExtension calls manga.v1.MangaService.UpdateExtension.
func (c *mangaServiceClient) UpdateExtension(ctx context.Context, req *connect.Request[v1.ExtensionRequest]) (*connect.Response[v1.ExtensionResponse], error) {
	return c.updateExtension.CallUnary(ctx, req)
}

// ListExtensions calls manga.v1.MangaService.ListExtensions.
func (c *mangaServiceClient) ListExtensions(ctx context.Context, req *connect.Request[v1.ListExtensionRequest]) (*connect.Response[v1.ListExtensionResponse], error) {
	return c.listExtensions.CallUnary(ctx, req)
}

// MangaServiceHandler is an implementation of the manga.v1.MangaService service.
type MangaServiceHandler interface {
	// //////////////////////////////////////////////////////////////////////////////////////
	// search plugin
	SearchPlugin(context.Context, *connect.Request[v1.SearchPluginRequest]) (*connect.Response[v1.SearchPluginResponse], error)
	// refresh manga
	RefreshManga(context.Context, *connect.Request[v1.RefreshMangaRequest]) (*connect.Response[v1.RefreshMangaResponse], error)
	// //////////////////////////////////////////////////////////////////////////////////////
	// repo management
	InstallRepo(context.Context, *connect.Request[v1.InstallRepoRequest]) (*connect.Response[v1.InstallRepoResponse], error)
	UnInstallRepo(context.Context, *connect.Request[v1.RepoRequest]) (*connect.Response[v1.RepoResponse], error)
	UpdateRepo(context.Context, *connect.Request[v1.RepoRequest]) (*connect.Response[v1.RepoResponse], error)
	ListRepos(context.Context, *connect.Request[v1.ListRepoRequest]) (*connect.Response[v1.ListRepoResponse], error)
	// //////////////////////////////////////////////////////////////////////////////////////
	// extension management
	InstallExtension(context.Context, *connect.Request[v1.ExtensionRequest]) (*connect.Response[v1.ExtensionResponse], error)
	UnInstallExtension(context.Context, *connect.Request[v1.ExtensionRequest]) (*connect.Response[v1.ExtensionResponse], error)
	UpdateExtension(context.Context, *connect.Request[v1.ExtensionRequest]) (*connect.Response[v1.ExtensionResponse], error)
	ListExtensions(context.Context, *connect.Request[v1.ListExtensionRequest]) (*connect.Response[v1.ListExtensionResponse], error)
}

// NewMangaServiceHandler builds an HTTP handler from the service implementation. It returns the
// path on which to mount the handler and the handler itself.
//
// By default, handlers support the Connect, gRPC, and gRPC-Web protocols with the binary Protobuf
// and JSON codecs. They also support gzip compression.
func NewMangaServiceHandler(svc MangaServiceHandler, opts ...connect.HandlerOption) (string, http.Handler) {
	mangaServiceSearchPluginHandler := connect.NewUnaryHandler(
		MangaServiceSearchPluginProcedure,
		svc.SearchPlugin,
		connect.WithSchema(mangaServiceSearchPluginMethodDescriptor),
		connect.WithHandlerOptions(opts...),
	)
	mangaServiceRefreshMangaHandler := connect.NewUnaryHandler(
		MangaServiceRefreshMangaProcedure,
		svc.RefreshManga,
		connect.WithSchema(mangaServiceRefreshMangaMethodDescriptor),
		connect.WithHandlerOptions(opts...),
	)
	mangaServiceInstallRepoHandler := connect.NewUnaryHandler(
		MangaServiceInstallRepoProcedure,
		svc.InstallRepo,
		connect.WithSchema(mangaServiceInstallRepoMethodDescriptor),
		connect.WithHandlerOptions(opts...),
	)
	mangaServiceUnInstallRepoHandler := connect.NewUnaryHandler(
		MangaServiceUnInstallRepoProcedure,
		svc.UnInstallRepo,
		connect.WithSchema(mangaServiceUnInstallRepoMethodDescriptor),
		connect.WithHandlerOptions(opts...),
	)
	mangaServiceUpdateRepoHandler := connect.NewUnaryHandler(
		MangaServiceUpdateRepoProcedure,
		svc.UpdateRepo,
		connect.WithSchema(mangaServiceUpdateRepoMethodDescriptor),
		connect.WithHandlerOptions(opts...),
	)
	mangaServiceListReposHandler := connect.NewUnaryHandler(
		MangaServiceListReposProcedure,
		svc.ListRepos,
		connect.WithSchema(mangaServiceListReposMethodDescriptor),
		connect.WithHandlerOptions(opts...),
	)
	mangaServiceInstallExtensionHandler := connect.NewUnaryHandler(
		MangaServiceInstallExtensionProcedure,
		svc.InstallExtension,
		connect.WithSchema(mangaServiceInstallExtensionMethodDescriptor),
		connect.WithHandlerOptions(opts...),
	)
	mangaServiceUnInstallExtensionHandler := connect.NewUnaryHandler(
		MangaServiceUnInstallExtensionProcedure,
		svc.UnInstallExtension,
		connect.WithSchema(mangaServiceUnInstallExtensionMethodDescriptor),
		connect.WithHandlerOptions(opts...),
	)
	mangaServiceUpdateExtensionHandler := connect.NewUnaryHandler(
		MangaServiceUpdateExtensionProcedure,
		svc.UpdateExtension,
		connect.WithSchema(mangaServiceUpdateExtensionMethodDescriptor),
		connect.WithHandlerOptions(opts...),
	)
	mangaServiceListExtensionsHandler := connect.NewUnaryHandler(
		MangaServiceListExtensionsProcedure,
		svc.ListExtensions,
		connect.WithSchema(mangaServiceListExtensionsMethodDescriptor),
		connect.WithHandlerOptions(opts...),
	)
	return "/manga.v1.MangaService/", http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		switch r.URL.Path {
		case MangaServiceSearchPluginProcedure:
			mangaServiceSearchPluginHandler.ServeHTTP(w, r)
		case MangaServiceRefreshMangaProcedure:
			mangaServiceRefreshMangaHandler.ServeHTTP(w, r)
		case MangaServiceInstallRepoProcedure:
			mangaServiceInstallRepoHandler.ServeHTTP(w, r)
		case MangaServiceUnInstallRepoProcedure:
			mangaServiceUnInstallRepoHandler.ServeHTTP(w, r)
		case MangaServiceUpdateRepoProcedure:
			mangaServiceUpdateRepoHandler.ServeHTTP(w, r)
		case MangaServiceListReposProcedure:
			mangaServiceListReposHandler.ServeHTTP(w, r)
		case MangaServiceInstallExtensionProcedure:
			mangaServiceInstallExtensionHandler.ServeHTTP(w, r)
		case MangaServiceUnInstallExtensionProcedure:
			mangaServiceUnInstallExtensionHandler.ServeHTTP(w, r)
		case MangaServiceUpdateExtensionProcedure:
			mangaServiceUpdateExtensionHandler.ServeHTTP(w, r)
		case MangaServiceListExtensionsProcedure:
			mangaServiceListExtensionsHandler.ServeHTTP(w, r)
		default:
			http.NotFound(w, r)
		}
	})
}

// UnimplementedMangaServiceHandler returns CodeUnimplemented from all methods.
type UnimplementedMangaServiceHandler struct{}

func (UnimplementedMangaServiceHandler) SearchPlugin(context.Context, *connect.Request[v1.SearchPluginRequest]) (*connect.Response[v1.SearchPluginResponse], error) {
	return nil, connect.NewError(connect.CodeUnimplemented, errors.New("manga.v1.MangaService.SearchPlugin is not implemented"))
}

func (UnimplementedMangaServiceHandler) RefreshManga(context.Context, *connect.Request[v1.RefreshMangaRequest]) (*connect.Response[v1.RefreshMangaResponse], error) {
	return nil, connect.NewError(connect.CodeUnimplemented, errors.New("manga.v1.MangaService.RefreshManga is not implemented"))
}

func (UnimplementedMangaServiceHandler) InstallRepo(context.Context, *connect.Request[v1.InstallRepoRequest]) (*connect.Response[v1.InstallRepoResponse], error) {
	return nil, connect.NewError(connect.CodeUnimplemented, errors.New("manga.v1.MangaService.InstallRepo is not implemented"))
}

func (UnimplementedMangaServiceHandler) UnInstallRepo(context.Context, *connect.Request[v1.RepoRequest]) (*connect.Response[v1.RepoResponse], error) {
	return nil, connect.NewError(connect.CodeUnimplemented, errors.New("manga.v1.MangaService.UnInstallRepo is not implemented"))
}

func (UnimplementedMangaServiceHandler) UpdateRepo(context.Context, *connect.Request[v1.RepoRequest]) (*connect.Response[v1.RepoResponse], error) {
	return nil, connect.NewError(connect.CodeUnimplemented, errors.New("manga.v1.MangaService.UpdateRepo is not implemented"))
}

func (UnimplementedMangaServiceHandler) ListRepos(context.Context, *connect.Request[v1.ListRepoRequest]) (*connect.Response[v1.ListRepoResponse], error) {
	return nil, connect.NewError(connect.CodeUnimplemented, errors.New("manga.v1.MangaService.ListRepos is not implemented"))
}

func (UnimplementedMangaServiceHandler) InstallExtension(context.Context, *connect.Request[v1.ExtensionRequest]) (*connect.Response[v1.ExtensionResponse], error) {
	return nil, connect.NewError(connect.CodeUnimplemented, errors.New("manga.v1.MangaService.InstallExtension is not implemented"))
}

func (UnimplementedMangaServiceHandler) UnInstallExtension(context.Context, *connect.Request[v1.ExtensionRequest]) (*connect.Response[v1.ExtensionResponse], error) {
	return nil, connect.NewError(connect.CodeUnimplemented, errors.New("manga.v1.MangaService.UnInstallExtension is not implemented"))
}

func (UnimplementedMangaServiceHandler) UpdateExtension(context.Context, *connect.Request[v1.ExtensionRequest]) (*connect.Response[v1.ExtensionResponse], error) {
	return nil, connect.NewError(connect.CodeUnimplemented, errors.New("manga.v1.MangaService.UpdateExtension is not implemented"))
}

func (UnimplementedMangaServiceHandler) ListExtensions(context.Context, *connect.Request[v1.ListExtensionRequest]) (*connect.Response[v1.ListExtensionResponse], error) {
	return nil, connect.NewError(connect.CodeUnimplemented, errors.New("manga.v1.MangaService.ListExtensions is not implemented"))
}