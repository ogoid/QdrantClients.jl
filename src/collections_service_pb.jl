# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

# service methods for Collections
const _Collections_methods = MethodDescriptor[
        MethodDescriptor("Get", 1, GetCollectionInfoRequest, GetCollectionInfoResponse),
        MethodDescriptor("List", 2, ListCollectionsRequest, ListCollectionsResponse),
        MethodDescriptor("Create", 3, CreateCollection, CollectionOperationResponse),
        MethodDescriptor("Update", 4, UpdateCollection, CollectionOperationResponse),
        MethodDescriptor("Delete", 5, DeleteCollection, CollectionOperationResponse),
        MethodDescriptor("UpdateAliases", 6, ChangeAliases, CollectionOperationResponse),
        MethodDescriptor("ListCollectionAliases", 7, ListCollectionAliasesRequest, ListAliasesResponse),
        MethodDescriptor("ListAliases", 8, ListAliasesRequest, ListAliasesResponse)
    ] # const _Collections_methods
const _Collections_desc = ServiceDescriptor("qdrant.Collections", 1, _Collections_methods)

Collections(impl::Module) = ProtoService(_Collections_desc, impl)

mutable struct CollectionsStub <: AbstractProtoServiceStub{false}
    impl::ProtoServiceStub
    CollectionsStub(channel::ProtoRpcChannel) = new(ProtoServiceStub(_Collections_desc, channel))
end # mutable struct CollectionsStub

mutable struct CollectionsBlockingStub <: AbstractProtoServiceStub{true}
    impl::ProtoServiceBlockingStub
    CollectionsBlockingStub(channel::ProtoRpcChannel) = new(ProtoServiceBlockingStub(_Collections_desc, channel))
end # mutable struct CollectionsBlockingStub

Get(stub::CollectionsStub, controller::ProtoRpcController, inp::GetCollectionInfoRequest, done::Function) = call_method(stub.impl, _Collections_methods[1], controller, inp, done)
Get(stub::CollectionsBlockingStub, controller::ProtoRpcController, inp::GetCollectionInfoRequest) = call_method(stub.impl, _Collections_methods[1], controller, inp)

List(stub::CollectionsStub, controller::ProtoRpcController, inp::ListCollectionsRequest, done::Function) = call_method(stub.impl, _Collections_methods[2], controller, inp, done)
List(stub::CollectionsBlockingStub, controller::ProtoRpcController, inp::ListCollectionsRequest) = call_method(stub.impl, _Collections_methods[2], controller, inp)

Create(stub::CollectionsStub, controller::ProtoRpcController, inp::CreateCollection, done::Function) = call_method(stub.impl, _Collections_methods[3], controller, inp, done)
Create(stub::CollectionsBlockingStub, controller::ProtoRpcController, inp::CreateCollection) = call_method(stub.impl, _Collections_methods[3], controller, inp)

Update(stub::CollectionsStub, controller::ProtoRpcController, inp::UpdateCollection, done::Function) = call_method(stub.impl, _Collections_methods[4], controller, inp, done)
Update(stub::CollectionsBlockingStub, controller::ProtoRpcController, inp::UpdateCollection) = call_method(stub.impl, _Collections_methods[4], controller, inp)

Delete(stub::CollectionsStub, controller::ProtoRpcController, inp::DeleteCollection, done::Function) = call_method(stub.impl, _Collections_methods[5], controller, inp, done)
Delete(stub::CollectionsBlockingStub, controller::ProtoRpcController, inp::DeleteCollection) = call_method(stub.impl, _Collections_methods[5], controller, inp)

UpdateAliases(stub::CollectionsStub, controller::ProtoRpcController, inp::ChangeAliases, done::Function) = call_method(stub.impl, _Collections_methods[6], controller, inp, done)
UpdateAliases(stub::CollectionsBlockingStub, controller::ProtoRpcController, inp::ChangeAliases) = call_method(stub.impl, _Collections_methods[6], controller, inp)

ListCollectionAliases(stub::CollectionsStub, controller::ProtoRpcController, inp::ListCollectionAliasesRequest, done::Function) = call_method(stub.impl, _Collections_methods[7], controller, inp, done)
ListCollectionAliases(stub::CollectionsBlockingStub, controller::ProtoRpcController, inp::ListCollectionAliasesRequest) = call_method(stub.impl, _Collections_methods[7], controller, inp)

ListAliases(stub::CollectionsStub, controller::ProtoRpcController, inp::ListAliasesRequest, done::Function) = call_method(stub.impl, _Collections_methods[8], controller, inp, done)
ListAliases(stub::CollectionsBlockingStub, controller::ProtoRpcController, inp::ListAliasesRequest) = call_method(stub.impl, _Collections_methods[8], controller, inp)

export Collections, CollectionsStub, CollectionsBlockingStub, Get, List, Create, Update, Delete, UpdateAliases, ListCollectionAliases, ListAliases
