# Generated by the gRPC Python protocol compiler plugin. DO NOT EDIT!
"""Client and server classes corresponding to protobuf-defined services."""
import grpc
import warnings

from manga_client.v1 import manga_client_pb2 as manga__client_dot_v1_dot_manga__client__pb2

GRPC_GENERATED_VERSION = '1.67.0'
GRPC_VERSION = grpc.__version__
_version_not_supported = False

try:
    from grpc._utilities import first_version_is_lower
    _version_not_supported = first_version_is_lower(GRPC_VERSION, GRPC_GENERATED_VERSION)
except ImportError:
    _version_not_supported = True

if _version_not_supported:
    raise RuntimeError(
        f'The grpc package installed is at version {GRPC_VERSION},'
        + f' but the generated code in manga_client/v1/manga_client_pb2_grpc.py depends on'
        + f' grpcio>={GRPC_GENERATED_VERSION}.'
        + f' Please upgrade your grpc module to grpcio>={GRPC_GENERATED_VERSION}'
        + f' or downgrade your generated code using grpcio-tools<={GRPC_VERSION}.'
    )


class MangaClientServiceStub(object):
    """import "types/plugin/v1/plugin_types.proto";

    """

    def __init__(self, channel):
        """Constructor.

        Args:
            channel: A grpc.Channel.
        """
        self.NewJob = channel.unary_unary(
                '/manga_client.v1.MangaClientService/NewJob',
                request_serializer=manga__client_dot_v1_dot_manga__client__pb2.NewJobRequest.SerializeToString,
                response_deserializer=manga__client_dot_v1_dot_manga__client__pb2.NewJobResponse.FromString,
                _registered_method=True)
        self.JobStatus = channel.unary_unary(
                '/manga_client.v1.MangaClientService/JobStatus',
                request_serializer=manga__client_dot_v1_dot_manga__client__pb2.JobStatusRequest.SerializeToString,
                response_deserializer=manga__client_dot_v1_dot_manga__client__pb2.JobStatusResponse.FromString,
                _registered_method=True)
        self.CancelJob = channel.unary_unary(
                '/manga_client.v1.MangaClientService/CancelJob',
                request_serializer=manga__client_dot_v1_dot_manga__client__pb2.CancelJobRequest.SerializeToString,
                response_deserializer=manga__client_dot_v1_dot_manga__client__pb2.CancelJobResponse.FromString,
                _registered_method=True)


class MangaClientServiceServicer(object):
    """import "types/plugin/v1/plugin_types.proto";

    """

    def NewJob(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def JobStatus(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def CancelJob(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')


def add_MangaClientServiceServicer_to_server(servicer, server):
    rpc_method_handlers = {
            'NewJob': grpc.unary_unary_rpc_method_handler(
                    servicer.NewJob,
                    request_deserializer=manga__client_dot_v1_dot_manga__client__pb2.NewJobRequest.FromString,
                    response_serializer=manga__client_dot_v1_dot_manga__client__pb2.NewJobResponse.SerializeToString,
            ),
            'JobStatus': grpc.unary_unary_rpc_method_handler(
                    servicer.JobStatus,
                    request_deserializer=manga__client_dot_v1_dot_manga__client__pb2.JobStatusRequest.FromString,
                    response_serializer=manga__client_dot_v1_dot_manga__client__pb2.JobStatusResponse.SerializeToString,
            ),
            'CancelJob': grpc.unary_unary_rpc_method_handler(
                    servicer.CancelJob,
                    request_deserializer=manga__client_dot_v1_dot_manga__client__pb2.CancelJobRequest.FromString,
                    response_serializer=manga__client_dot_v1_dot_manga__client__pb2.CancelJobResponse.SerializeToString,
            ),
    }
    generic_handler = grpc.method_handlers_generic_handler(
            'manga_client.v1.MangaClientService', rpc_method_handlers)
    server.add_generic_rpc_handlers((generic_handler,))
    server.add_registered_method_handlers('manga_client.v1.MangaClientService', rpc_method_handlers)


 # This class is part of an EXPERIMENTAL API.
class MangaClientService(object):
    """import "types/plugin/v1/plugin_types.proto";

    """

    @staticmethod
    def NewJob(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(
            request,
            target,
            '/manga_client.v1.MangaClientService/NewJob',
            manga__client_dot_v1_dot_manga__client__pb2.NewJobRequest.SerializeToString,
            manga__client_dot_v1_dot_manga__client__pb2.NewJobResponse.FromString,
            options,
            channel_credentials,
            insecure,
            call_credentials,
            compression,
            wait_for_ready,
            timeout,
            metadata,
            _registered_method=True)

    @staticmethod
    def JobStatus(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(
            request,
            target,
            '/manga_client.v1.MangaClientService/JobStatus',
            manga__client_dot_v1_dot_manga__client__pb2.JobStatusRequest.SerializeToString,
            manga__client_dot_v1_dot_manga__client__pb2.JobStatusResponse.FromString,
            options,
            channel_credentials,
            insecure,
            call_credentials,
            compression,
            wait_for_ready,
            timeout,
            metadata,
            _registered_method=True)

    @staticmethod
    def CancelJob(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(
            request,
            target,
            '/manga_client.v1.MangaClientService/CancelJob',
            manga__client_dot_v1_dot_manga__client__pb2.CancelJobRequest.SerializeToString,
            manga__client_dot_v1_dot_manga__client__pb2.CancelJobResponse.FromString,
            options,
            channel_credentials,
            insecure,
            call_credentials,
            compression,
            wait_for_ready,
            timeout,
            metadata,
            _registered_method=True)
