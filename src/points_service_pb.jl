# syntax: proto3
using ProtoBuf
import ProtoBuf.meta
import ProtoBuf.google.protobuf

# service methods for Points
const _Points_methods = MethodDescriptor[
        MethodDescriptor("Upsert", 1, UpsertPoints, PointsOperationResponse),
        MethodDescriptor("Delete", 2, DeletePoints, PointsOperationResponse),
        MethodDescriptor("Get", 3, GetPoints, GetResponse),
        MethodDescriptor("SetPayload", 4, SetPayloadPoints, PointsOperationResponse),
        MethodDescriptor("DeletePayload", 5, DeletePayloadPoints, PointsOperationResponse),
        MethodDescriptor("ClearPayload", 6, ClearPayloadPoints, PointsOperationResponse),
        MethodDescriptor("CreateFieldIndex", 7, CreateFieldIndexCollection, PointsOperationResponse),
        MethodDescriptor("DeleteFieldIndex", 8, DeleteFieldIndexCollection, PointsOperationResponse),
        MethodDescriptor("Search", 9, SearchPoints, SearchResponse),
        MethodDescriptor("Scroll", 10, ScrollPoints, ScrollResponse),
        MethodDescriptor("Recommend", 11, RecommendPoints, RecommendResponse),
        MethodDescriptor("Count", 12, CountPoints, CountResponse)
    ] # const _Points_methods
const _Points_desc = ServiceDescriptor("qdrant.Points", 1, _Points_methods)

Points(impl::Module) = ProtoService(_Points_desc, impl)

mutable struct PointsStub <: AbstractProtoServiceStub{false}
    impl::ProtoServiceStub
    PointsStub(channel::ProtoRpcChannel) = new(ProtoServiceStub(_Points_desc, channel))
end # mutable struct PointsStub

mutable struct PointsBlockingStub <: AbstractProtoServiceStub{true}
    impl::ProtoServiceBlockingStub
    PointsBlockingStub(channel::ProtoRpcChannel) = new(ProtoServiceBlockingStub(_Points_desc, channel))
end # mutable struct PointsBlockingStub

Upsert(stub::PointsStub, controller::ProtoRpcController, inp::UpsertPoints, done::Function) = call_method(stub.impl, _Points_methods[1], controller, inp, done)
Upsert(stub::PointsBlockingStub, controller::ProtoRpcController, inp::UpsertPoints) = call_method(stub.impl, _Points_methods[1], controller, inp)

Delete(stub::PointsStub, controller::ProtoRpcController, inp::DeletePoints, done::Function) = call_method(stub.impl, _Points_methods[2], controller, inp, done)
Delete(stub::PointsBlockingStub, controller::ProtoRpcController, inp::DeletePoints) = call_method(stub.impl, _Points_methods[2], controller, inp)

Get(stub::PointsStub, controller::ProtoRpcController, inp::GetPoints, done::Function) = call_method(stub.impl, _Points_methods[3], controller, inp, done)
Get(stub::PointsBlockingStub, controller::ProtoRpcController, inp::GetPoints) = call_method(stub.impl, _Points_methods[3], controller, inp)

SetPayload(stub::PointsStub, controller::ProtoRpcController, inp::SetPayloadPoints, done::Function) = call_method(stub.impl, _Points_methods[4], controller, inp, done)
SetPayload(stub::PointsBlockingStub, controller::ProtoRpcController, inp::SetPayloadPoints) = call_method(stub.impl, _Points_methods[4], controller, inp)

DeletePayload(stub::PointsStub, controller::ProtoRpcController, inp::DeletePayloadPoints, done::Function) = call_method(stub.impl, _Points_methods[5], controller, inp, done)
DeletePayload(stub::PointsBlockingStub, controller::ProtoRpcController, inp::DeletePayloadPoints) = call_method(stub.impl, _Points_methods[5], controller, inp)

ClearPayload(stub::PointsStub, controller::ProtoRpcController, inp::ClearPayloadPoints, done::Function) = call_method(stub.impl, _Points_methods[6], controller, inp, done)
ClearPayload(stub::PointsBlockingStub, controller::ProtoRpcController, inp::ClearPayloadPoints) = call_method(stub.impl, _Points_methods[6], controller, inp)

CreateFieldIndex(stub::PointsStub, controller::ProtoRpcController, inp::CreateFieldIndexCollection, done::Function) = call_method(stub.impl, _Points_methods[7], controller, inp, done)
CreateFieldIndex(stub::PointsBlockingStub, controller::ProtoRpcController, inp::CreateFieldIndexCollection) = call_method(stub.impl, _Points_methods[7], controller, inp)

DeleteFieldIndex(stub::PointsStub, controller::ProtoRpcController, inp::DeleteFieldIndexCollection, done::Function) = call_method(stub.impl, _Points_methods[8], controller, inp, done)
DeleteFieldIndex(stub::PointsBlockingStub, controller::ProtoRpcController, inp::DeleteFieldIndexCollection) = call_method(stub.impl, _Points_methods[8], controller, inp)

Search(stub::PointsStub, controller::ProtoRpcController, inp::SearchPoints, done::Function) = call_method(stub.impl, _Points_methods[9], controller, inp, done)
Search(stub::PointsBlockingStub, controller::ProtoRpcController, inp::SearchPoints) = call_method(stub.impl, _Points_methods[9], controller, inp)

Scroll(stub::PointsStub, controller::ProtoRpcController, inp::ScrollPoints, done::Function) = call_method(stub.impl, _Points_methods[10], controller, inp, done)
Scroll(stub::PointsBlockingStub, controller::ProtoRpcController, inp::ScrollPoints) = call_method(stub.impl, _Points_methods[10], controller, inp)

Recommend(stub::PointsStub, controller::ProtoRpcController, inp::RecommendPoints, done::Function) = call_method(stub.impl, _Points_methods[11], controller, inp, done)
Recommend(stub::PointsBlockingStub, controller::ProtoRpcController, inp::RecommendPoints) = call_method(stub.impl, _Points_methods[11], controller, inp)

Count(stub::PointsStub, controller::ProtoRpcController, inp::CountPoints, done::Function) = call_method(stub.impl, _Points_methods[12], controller, inp, done)
Count(stub::PointsBlockingStub, controller::ProtoRpcController, inp::CountPoints) = call_method(stub.impl, _Points_methods[12], controller, inp)

export Points, PointsStub, PointsBlockingStub, Upsert, Delete, Get, SetPayload, DeletePayload, ClearPayload, CreateFieldIndex, DeleteFieldIndex, Search, Scroll, Recommend, Count
