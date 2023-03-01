module QdrantClients
using gRPCClient

include("qdrant.jl")
using .qdrant

import Base: show

# begin service: qdrant.Collections

export CollectionsBlockingClient, CollectionsClient

struct CollectionsBlockingClient
    controller::gRPCController
    channel::gRPCChannel
    stub::CollectionsBlockingStub

    function CollectionsBlockingClient(api_base_url::String; kwargs...)
        controller = gRPCController(; kwargs...)
        channel = gRPCChannel(api_base_url)
        stub = CollectionsBlockingStub(channel)
        new(controller, channel, stub)
    end
end

struct CollectionsClient
    controller::gRPCController
    channel::gRPCChannel
    stub::CollectionsStub

    function CollectionsClient(api_base_url::String; kwargs...)
        controller = gRPCController(; kwargs...)
        channel = gRPCChannel(api_base_url)
        stub = CollectionsStub(channel)
        new(controller, channel, stub)
    end
end

show(io::IO, client::CollectionsBlockingClient) = print(io, "CollectionsBlockingClient(", client.channel.baseurl, ")")
show(io::IO, client::CollectionsClient) = print(io, "CollectionsClient(", client.channel.baseurl, ")")

import .qdrant: Get
"""
    Get

- input: qdrant.GetCollectionInfoRequest
- output: qdrant.GetCollectionInfoResponse
"""
Get(client::CollectionsBlockingClient, inp::qdrant.GetCollectionInfoRequest) = Get(client.stub, client.controller, inp)
Get(client::CollectionsClient, inp::qdrant.GetCollectionInfoRequest, done::Function) = Get(client.stub, client.controller, inp, done)

import .qdrant: List
"""
    List

- input: qdrant.ListCollectionsRequest
- output: qdrant.ListCollectionsResponse
"""
List(client::CollectionsBlockingClient, inp::qdrant.ListCollectionsRequest) = List(client.stub, client.controller, inp)
List(client::CollectionsClient, inp::qdrant.ListCollectionsRequest, done::Function) = List(client.stub, client.controller, inp, done)

import .qdrant: Create
"""
    Create

- input: qdrant.CreateCollection
- output: qdrant.CollectionOperationResponse
"""
Create(client::CollectionsBlockingClient, inp::qdrant.CreateCollection) = Create(client.stub, client.controller, inp)
Create(client::CollectionsClient, inp::qdrant.CreateCollection, done::Function) = Create(client.stub, client.controller, inp, done)

import .qdrant: Update
"""
    Update

- input: qdrant.UpdateCollection
- output: qdrant.CollectionOperationResponse
"""
Update(client::CollectionsBlockingClient, inp::qdrant.UpdateCollection) = Update(client.stub, client.controller, inp)
Update(client::CollectionsClient, inp::qdrant.UpdateCollection, done::Function) = Update(client.stub, client.controller, inp, done)

import .qdrant: Delete
"""
    Delete

- input: qdrant.DeleteCollection
- output: qdrant.CollectionOperationResponse
"""
Delete(client::CollectionsBlockingClient, inp::qdrant.DeleteCollection) = Delete(client.stub, client.controller, inp)
Delete(client::CollectionsClient, inp::qdrant.DeleteCollection, done::Function) = Delete(client.stub, client.controller, inp, done)

import .qdrant: UpdateAliases
"""
    UpdateAliases

- input: qdrant.ChangeAliases
- output: qdrant.CollectionOperationResponse
"""
UpdateAliases(client::CollectionsBlockingClient, inp::qdrant.ChangeAliases) = UpdateAliases(client.stub, client.controller, inp)
UpdateAliases(client::CollectionsClient, inp::qdrant.ChangeAliases, done::Function) = UpdateAliases(client.stub, client.controller, inp, done)

import .qdrant: ListCollectionAliases
"""
    ListCollectionAliases

- input: qdrant.ListCollectionAliasesRequest
- output: qdrant.ListAliasesResponse
"""
ListCollectionAliases(client::CollectionsBlockingClient, inp::qdrant.ListCollectionAliasesRequest) = ListCollectionAliases(client.stub, client.controller, inp)
ListCollectionAliases(client::CollectionsClient, inp::qdrant.ListCollectionAliasesRequest, done::Function) = ListCollectionAliases(client.stub, client.controller, inp, done)

import .qdrant: ListAliases
"""
    ListAliases

- input: qdrant.ListAliasesRequest
- output: qdrant.ListAliasesResponse
"""
ListAliases(client::CollectionsBlockingClient, inp::qdrant.ListAliasesRequest) = ListAliases(client.stub, client.controller, inp)
ListAliases(client::CollectionsClient, inp::qdrant.ListAliasesRequest, done::Function) = ListAliases(client.stub, client.controller, inp, done)

# end service: qdrant.Collections

# begin service: qdrant.Points

export PointsBlockingClient, PointsClient

struct PointsBlockingClient
    controller::gRPCController
    channel::gRPCChannel
    stub::PointsBlockingStub

    function PointsBlockingClient(api_base_url::String; kwargs...)
        controller = gRPCController(; kwargs...)
        channel = gRPCChannel(api_base_url)
        stub = PointsBlockingStub(channel)
        new(controller, channel, stub)
    end
end

struct PointsClient
    controller::gRPCController
    channel::gRPCChannel
    stub::PointsStub

    function PointsClient(api_base_url::String; kwargs...)
        controller = gRPCController(; kwargs...)
        channel = gRPCChannel(api_base_url)
        stub = PointsStub(channel)
        new(controller, channel, stub)
    end
end

show(io::IO, client::PointsBlockingClient) = print(io, "PointsBlockingClient(", client.channel.baseurl, ")")
show(io::IO, client::PointsClient) = print(io, "PointsClient(", client.channel.baseurl, ")")

import .qdrant: Upsert
"""
    Upsert

- input: qdrant.UpsertPoints
- output: qdrant.PointsOperationResponse
"""
Upsert(client::PointsBlockingClient, inp::qdrant.UpsertPoints) = Upsert(client.stub, client.controller, inp)
Upsert(client::PointsClient, inp::qdrant.UpsertPoints, done::Function) = Upsert(client.stub, client.controller, inp, done)

import .qdrant: Delete
"""
    Delete

- input: qdrant.DeletePoints
- output: qdrant.PointsOperationResponse
"""
Delete(client::PointsBlockingClient, inp::qdrant.DeletePoints) = Delete(client.stub, client.controller, inp)
Delete(client::PointsClient, inp::qdrant.DeletePoints, done::Function) = Delete(client.stub, client.controller, inp, done)

import .qdrant: Get
"""
    Get

- input: qdrant.GetPoints
- output: qdrant.GetResponse
"""
Get(client::PointsBlockingClient, inp::qdrant.GetPoints) = Get(client.stub, client.controller, inp)
Get(client::PointsClient, inp::qdrant.GetPoints, done::Function) = Get(client.stub, client.controller, inp, done)

import .qdrant: SetPayload
"""
    SetPayload

- input: qdrant.SetPayloadPoints
- output: qdrant.PointsOperationResponse
"""
SetPayload(client::PointsBlockingClient, inp::qdrant.SetPayloadPoints) = SetPayload(client.stub, client.controller, inp)
SetPayload(client::PointsClient, inp::qdrant.SetPayloadPoints, done::Function) = SetPayload(client.stub, client.controller, inp, done)

import .qdrant: OverwritePayload
"""
    OverwritePayload

- input: qdrant.SetPayloadPoints
- output: qdrant.PointsOperationResponse
"""
OverwritePayload(client::PointsBlockingClient, inp::qdrant.SetPayloadPoints) = OverwritePayload(client.stub, client.controller, inp)
OverwritePayload(client::PointsClient, inp::qdrant.SetPayloadPoints, done::Function) = OverwritePayload(client.stub, client.controller, inp, done)

import .qdrant: DeletePayload
"""
    DeletePayload

- input: qdrant.DeletePayloadPoints
- output: qdrant.PointsOperationResponse
"""
DeletePayload(client::PointsBlockingClient, inp::qdrant.DeletePayloadPoints) = DeletePayload(client.stub, client.controller, inp)
DeletePayload(client::PointsClient, inp::qdrant.DeletePayloadPoints, done::Function) = DeletePayload(client.stub, client.controller, inp, done)

import .qdrant: ClearPayload
"""
    ClearPayload

- input: qdrant.ClearPayloadPoints
- output: qdrant.PointsOperationResponse
"""
ClearPayload(client::PointsBlockingClient, inp::qdrant.ClearPayloadPoints) = ClearPayload(client.stub, client.controller, inp)
ClearPayload(client::PointsClient, inp::qdrant.ClearPayloadPoints, done::Function) = ClearPayload(client.stub, client.controller, inp, done)

import .qdrant: CreateFieldIndex
"""
    CreateFieldIndex

- input: qdrant.CreateFieldIndexCollection
- output: qdrant.PointsOperationResponse
"""
CreateFieldIndex(client::PointsBlockingClient, inp::qdrant.CreateFieldIndexCollection) = CreateFieldIndex(client.stub, client.controller, inp)
CreateFieldIndex(client::PointsClient, inp::qdrant.CreateFieldIndexCollection, done::Function) = CreateFieldIndex(client.stub, client.controller, inp, done)

import .qdrant: DeleteFieldIndex
"""
    DeleteFieldIndex

- input: qdrant.DeleteFieldIndexCollection
- output: qdrant.PointsOperationResponse
"""
DeleteFieldIndex(client::PointsBlockingClient, inp::qdrant.DeleteFieldIndexCollection) = DeleteFieldIndex(client.stub, client.controller, inp)
DeleteFieldIndex(client::PointsClient, inp::qdrant.DeleteFieldIndexCollection, done::Function) = DeleteFieldIndex(client.stub, client.controller, inp, done)

import .qdrant: Search
"""
    Search

- input: qdrant.SearchPoints
- output: qdrant.SearchResponse
"""
Search(client::PointsBlockingClient, inp::qdrant.SearchPoints) = Search(client.stub, client.controller, inp)
Search(client::PointsClient, inp::qdrant.SearchPoints, done::Function) = Search(client.stub, client.controller, inp, done)

import .qdrant: SearchBatch
"""
    SearchBatch

- input: qdrant.SearchBatchPoints
- output: qdrant.SearchBatchResponse
"""
SearchBatch(client::PointsBlockingClient, inp::qdrant.SearchBatchPoints) = SearchBatch(client.stub, client.controller, inp)
SearchBatch(client::PointsClient, inp::qdrant.SearchBatchPoints, done::Function) = SearchBatch(client.stub, client.controller, inp, done)

import .qdrant: Scroll
"""
    Scroll

- input: qdrant.ScrollPoints
- output: qdrant.ScrollResponse
"""
Scroll(client::PointsBlockingClient, inp::qdrant.ScrollPoints) = Scroll(client.stub, client.controller, inp)
Scroll(client::PointsClient, inp::qdrant.ScrollPoints, done::Function) = Scroll(client.stub, client.controller, inp, done)

import .qdrant: Recommend
"""
    Recommend

- input: qdrant.RecommendPoints
- output: qdrant.RecommendResponse
"""
Recommend(client::PointsBlockingClient, inp::qdrant.RecommendPoints) = Recommend(client.stub, client.controller, inp)
Recommend(client::PointsClient, inp::qdrant.RecommendPoints, done::Function) = Recommend(client.stub, client.controller, inp, done)

import .qdrant: RecommendBatch
"""
    RecommendBatch

- input: qdrant.RecommendBatchPoints
- output: qdrant.RecommendBatchResponse
"""
RecommendBatch(client::PointsBlockingClient, inp::qdrant.RecommendBatchPoints) = RecommendBatch(client.stub, client.controller, inp)
RecommendBatch(client::PointsClient, inp::qdrant.RecommendBatchPoints, done::Function) = RecommendBatch(client.stub, client.controller, inp, done)

import .qdrant: Count
"""
    Count

- input: qdrant.CountPoints
- output: qdrant.CountResponse
"""
Count(client::PointsBlockingClient, inp::qdrant.CountPoints) = Count(client.stub, client.controller, inp)
Count(client::PointsClient, inp::qdrant.CountPoints, done::Function) = Count(client.stub, client.controller, inp, done)

# end service: qdrant.Points

# begin service: qdrant.Raft

export RaftBlockingClient, RaftClient

struct RaftBlockingClient
    controller::gRPCController
    channel::gRPCChannel
    stub::RaftBlockingStub

    function RaftBlockingClient(api_base_url::String; kwargs...)
        controller = gRPCController(; kwargs...)
        channel = gRPCChannel(api_base_url)
        stub = RaftBlockingStub(channel)
        new(controller, channel, stub)
    end
end

struct RaftClient
    controller::gRPCController
    channel::gRPCChannel
    stub::RaftStub

    function RaftClient(api_base_url::String; kwargs...)
        controller = gRPCController(; kwargs...)
        channel = gRPCChannel(api_base_url)
        stub = RaftStub(channel)
        new(controller, channel, stub)
    end
end

show(io::IO, client::RaftBlockingClient) = print(io, "RaftBlockingClient(", client.channel.baseurl, ")")
show(io::IO, client::RaftClient) = print(io, "RaftClient(", client.channel.baseurl, ")")

import .qdrant: Send
"""
    Send

- input: qdrant.RaftMessage
- output: google.protobuf.Empty
"""
Send(client::RaftBlockingClient, inp::qdrant.RaftMessage) = Send(client.stub, client.controller, inp)
Send(client::RaftClient, inp::qdrant.RaftMessage, done::Function) = Send(client.stub, client.controller, inp, done)

import .qdrant: WhoIs
"""
    WhoIs

- input: qdrant.PeerId
- output: qdrant.Uri
"""
WhoIs(client::RaftBlockingClient, inp::qdrant.PeerId) = WhoIs(client.stub, client.controller, inp)
WhoIs(client::RaftClient, inp::qdrant.PeerId, done::Function) = WhoIs(client.stub, client.controller, inp, done)

import .qdrant: AddPeerToKnown
"""
    AddPeerToKnown

- input: qdrant.AddPeerToKnownMessage
- output: qdrant.AllPeers
"""
AddPeerToKnown(client::RaftBlockingClient, inp::qdrant.AddPeerToKnownMessage) = AddPeerToKnown(client.stub, client.controller, inp)
AddPeerToKnown(client::RaftClient, inp::qdrant.AddPeerToKnownMessage, done::Function) = AddPeerToKnown(client.stub, client.controller, inp, done)

import .qdrant: AddPeerAsParticipant
"""
    AddPeerAsParticipant

- input: qdrant.PeerId
- output: google.protobuf.Empty
"""
AddPeerAsParticipant(client::RaftBlockingClient, inp::qdrant.PeerId) = AddPeerAsParticipant(client.stub, client.controller, inp)
AddPeerAsParticipant(client::RaftClient, inp::qdrant.PeerId, done::Function) = AddPeerAsParticipant(client.stub, client.controller, inp, done)

# end service: qdrant.Raft

# begin service: qdrant.Snapshots

export SnapshotsBlockingClient, SnapshotsClient

struct SnapshotsBlockingClient
    controller::gRPCController
    channel::gRPCChannel
    stub::SnapshotsBlockingStub

    function SnapshotsBlockingClient(api_base_url::String; kwargs...)
        controller = gRPCController(; kwargs...)
        channel = gRPCChannel(api_base_url)
        stub = SnapshotsBlockingStub(channel)
        new(controller, channel, stub)
    end
end

struct SnapshotsClient
    controller::gRPCController
    channel::gRPCChannel
    stub::SnapshotsStub

    function SnapshotsClient(api_base_url::String; kwargs...)
        controller = gRPCController(; kwargs...)
        channel = gRPCChannel(api_base_url)
        stub = SnapshotsStub(channel)
        new(controller, channel, stub)
    end
end

show(io::IO, client::SnapshotsBlockingClient) = print(io, "SnapshotsBlockingClient(", client.channel.baseurl, ")")
show(io::IO, client::SnapshotsClient) = print(io, "SnapshotsClient(", client.channel.baseurl, ")")

import .qdrant: Create
"""
    Create

- input: qdrant.CreateSnapshotRequest
- output: qdrant.CreateSnapshotResponse
"""
Create(client::SnapshotsBlockingClient, inp::qdrant.CreateSnapshotRequest) = Create(client.stub, client.controller, inp)
Create(client::SnapshotsClient, inp::qdrant.CreateSnapshotRequest, done::Function) = Create(client.stub, client.controller, inp, done)

import .qdrant: List
"""
    List

- input: qdrant.ListSnapshotsRequest
- output: qdrant.ListSnapshotsResponse
"""
List(client::SnapshotsBlockingClient, inp::qdrant.ListSnapshotsRequest) = List(client.stub, client.controller, inp)
List(client::SnapshotsClient, inp::qdrant.ListSnapshotsRequest, done::Function) = List(client.stub, client.controller, inp, done)

import .qdrant: Delete
"""
    Delete

- input: qdrant.DeleteSnapshotRequest
- output: qdrant.DeleteSnapshotResponse
"""
Delete(client::SnapshotsBlockingClient, inp::qdrant.DeleteSnapshotRequest) = Delete(client.stub, client.controller, inp)
Delete(client::SnapshotsClient, inp::qdrant.DeleteSnapshotRequest, done::Function) = Delete(client.stub, client.controller, inp, done)

import .qdrant: CreateFull
"""
    CreateFull

- input: qdrant.CreateFullSnapshotRequest
- output: qdrant.CreateSnapshotResponse
"""
CreateFull(client::SnapshotsBlockingClient, inp::qdrant.CreateFullSnapshotRequest) = CreateFull(client.stub, client.controller, inp)
CreateFull(client::SnapshotsClient, inp::qdrant.CreateFullSnapshotRequest, done::Function) = CreateFull(client.stub, client.controller, inp, done)

import .qdrant: ListFull
"""
    ListFull

- input: qdrant.ListFullSnapshotsRequest
- output: qdrant.ListSnapshotsResponse
"""
ListFull(client::SnapshotsBlockingClient, inp::qdrant.ListFullSnapshotsRequest) = ListFull(client.stub, client.controller, inp)
ListFull(client::SnapshotsClient, inp::qdrant.ListFullSnapshotsRequest, done::Function) = ListFull(client.stub, client.controller, inp, done)

import .qdrant: DeleteFull
"""
    DeleteFull

- input: qdrant.DeleteFullSnapshotRequest
- output: qdrant.DeleteSnapshotResponse
"""
DeleteFull(client::SnapshotsBlockingClient, inp::qdrant.DeleteFullSnapshotRequest) = DeleteFull(client.stub, client.controller, inp)
DeleteFull(client::SnapshotsClient, inp::qdrant.DeleteFullSnapshotRequest, done::Function) = DeleteFull(client.stub, client.controller, inp, done)

# end service: qdrant.Snapshots

end # module QdrantClients
