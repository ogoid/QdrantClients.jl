# syntax: proto3
using ProtoBuf
import ProtoBuf.meta
import ProtoBuf.google.protobuf

mutable struct CreateFullSnapshotRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CreateFullSnapshotRequest(; kwargs...)
        obj = new(meta(CreateFullSnapshotRequest), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct CreateFullSnapshotRequest
const __meta_CreateFullSnapshotRequest = Ref{ProtoMeta}()
function meta(::Type{CreateFullSnapshotRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CreateFullSnapshotRequest)
            __meta_CreateFullSnapshotRequest[] = target = ProtoMeta(CreateFullSnapshotRequest)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, CreateFullSnapshotRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_CreateFullSnapshotRequest[]
    end
end

mutable struct ListFullSnapshotsRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ListFullSnapshotsRequest(; kwargs...)
        obj = new(meta(ListFullSnapshotsRequest), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct ListFullSnapshotsRequest
const __meta_ListFullSnapshotsRequest = Ref{ProtoMeta}()
function meta(::Type{ListFullSnapshotsRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ListFullSnapshotsRequest)
            __meta_ListFullSnapshotsRequest[] = target = ProtoMeta(ListFullSnapshotsRequest)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, ListFullSnapshotsRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ListFullSnapshotsRequest[]
    end
end

mutable struct DeleteFullSnapshotRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function DeleteFullSnapshotRequest(; kwargs...)
        obj = new(meta(DeleteFullSnapshotRequest), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct DeleteFullSnapshotRequest
const __meta_DeleteFullSnapshotRequest = Ref{ProtoMeta}()
function meta(::Type{DeleteFullSnapshotRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_DeleteFullSnapshotRequest)
            __meta_DeleteFullSnapshotRequest[] = target = ProtoMeta(DeleteFullSnapshotRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:snapshot_name => AbstractString]
            meta(target, DeleteFullSnapshotRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_DeleteFullSnapshotRequest[]
    end
end
function Base.getproperty(obj::DeleteFullSnapshotRequest, name::Symbol)
    if name === :snapshot_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct CreateSnapshotRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CreateSnapshotRequest(; kwargs...)
        obj = new(meta(CreateSnapshotRequest), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct CreateSnapshotRequest
const __meta_CreateSnapshotRequest = Ref{ProtoMeta}()
function meta(::Type{CreateSnapshotRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CreateSnapshotRequest)
            __meta_CreateSnapshotRequest[] = target = ProtoMeta(CreateSnapshotRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:collection_name => AbstractString]
            meta(target, CreateSnapshotRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_CreateSnapshotRequest[]
    end
end
function Base.getproperty(obj::CreateSnapshotRequest, name::Symbol)
    if name === :collection_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct ListSnapshotsRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ListSnapshotsRequest(; kwargs...)
        obj = new(meta(ListSnapshotsRequest), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct ListSnapshotsRequest
const __meta_ListSnapshotsRequest = Ref{ProtoMeta}()
function meta(::Type{ListSnapshotsRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ListSnapshotsRequest)
            __meta_ListSnapshotsRequest[] = target = ProtoMeta(ListSnapshotsRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:collection_name => AbstractString]
            meta(target, ListSnapshotsRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ListSnapshotsRequest[]
    end
end
function Base.getproperty(obj::ListSnapshotsRequest, name::Symbol)
    if name === :collection_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct DeleteSnapshotRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function DeleteSnapshotRequest(; kwargs...)
        obj = new(meta(DeleteSnapshotRequest), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct DeleteSnapshotRequest
const __meta_DeleteSnapshotRequest = Ref{ProtoMeta}()
function meta(::Type{DeleteSnapshotRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_DeleteSnapshotRequest)
            __meta_DeleteSnapshotRequest[] = target = ProtoMeta(DeleteSnapshotRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:collection_name => AbstractString, :snapshot_name => AbstractString]
            meta(target, DeleteSnapshotRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_DeleteSnapshotRequest[]
    end
end
function Base.getproperty(obj::DeleteSnapshotRequest, name::Symbol)
    if name === :collection_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :snapshot_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct SnapshotDescription <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SnapshotDescription(; kwargs...)
        obj = new(meta(SnapshotDescription), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct SnapshotDescription
const __meta_SnapshotDescription = Ref{ProtoMeta}()
function meta(::Type{SnapshotDescription})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SnapshotDescription)
            __meta_SnapshotDescription[] = target = ProtoMeta(SnapshotDescription)
            allflds = Pair{Symbol,Union{Type,String}}[:name => AbstractString, :creation_time => ProtoBuf.google.protobuf.Timestamp, :size => Int64]
            meta(target, SnapshotDescription, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SnapshotDescription[]
    end
end
function Base.getproperty(obj::SnapshotDescription, name::Symbol)
    if name === :name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :creation_time
        return (obj.__protobuf_jl_internal_values[name])::ProtoBuf.google.protobuf.Timestamp
    elseif name === :size
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct CreateSnapshotResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CreateSnapshotResponse(; kwargs...)
        obj = new(meta(CreateSnapshotResponse), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct CreateSnapshotResponse
const __meta_CreateSnapshotResponse = Ref{ProtoMeta}()
function meta(::Type{CreateSnapshotResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CreateSnapshotResponse)
            __meta_CreateSnapshotResponse[] = target = ProtoMeta(CreateSnapshotResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:snapshot_description => SnapshotDescription, :time => Float64]
            meta(target, CreateSnapshotResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_CreateSnapshotResponse[]
    end
end
function Base.getproperty(obj::CreateSnapshotResponse, name::Symbol)
    if name === :snapshot_description
        return (obj.__protobuf_jl_internal_values[name])::SnapshotDescription
    elseif name === :time
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

mutable struct ListSnapshotsResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ListSnapshotsResponse(; kwargs...)
        obj = new(meta(ListSnapshotsResponse), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct ListSnapshotsResponse
const __meta_ListSnapshotsResponse = Ref{ProtoMeta}()
function meta(::Type{ListSnapshotsResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ListSnapshotsResponse)
            __meta_ListSnapshotsResponse[] = target = ProtoMeta(ListSnapshotsResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:snapshot_descriptions => Base.Vector{SnapshotDescription}, :time => Float64]
            meta(target, ListSnapshotsResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ListSnapshotsResponse[]
    end
end
function Base.getproperty(obj::ListSnapshotsResponse, name::Symbol)
    if name === :snapshot_descriptions
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{SnapshotDescription}
    elseif name === :time
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

mutable struct DeleteSnapshotResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function DeleteSnapshotResponse(; kwargs...)
        obj = new(meta(DeleteSnapshotResponse), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct DeleteSnapshotResponse
const __meta_DeleteSnapshotResponse = Ref{ProtoMeta}()
function meta(::Type{DeleteSnapshotResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_DeleteSnapshotResponse)
            __meta_DeleteSnapshotResponse[] = target = ProtoMeta(DeleteSnapshotResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:time => Float64]
            meta(target, DeleteSnapshotResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_DeleteSnapshotResponse[]
    end
end
function Base.getproperty(obj::DeleteSnapshotResponse, name::Symbol)
    if name === :time
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

# service methods for Snapshots
const _Snapshots_methods = MethodDescriptor[
        MethodDescriptor("Create", 1, CreateSnapshotRequest, CreateSnapshotResponse),
        MethodDescriptor("List", 2, ListSnapshotsRequest, ListSnapshotsResponse),
        MethodDescriptor("Delete", 3, DeleteSnapshotRequest, DeleteSnapshotResponse),
        MethodDescriptor("CreateFull", 4, CreateFullSnapshotRequest, CreateSnapshotResponse),
        MethodDescriptor("ListFull", 5, ListFullSnapshotsRequest, ListSnapshotsResponse),
        MethodDescriptor("DeleteFull", 6, DeleteFullSnapshotRequest, DeleteSnapshotResponse)
    ] # const _Snapshots_methods
const _Snapshots_desc = ServiceDescriptor("qdrant.Snapshots", 1, _Snapshots_methods)

Snapshots(impl::Module) = ProtoService(_Snapshots_desc, impl)

mutable struct SnapshotsStub <: AbstractProtoServiceStub{false}
    impl::ProtoServiceStub
    SnapshotsStub(channel::ProtoRpcChannel) = new(ProtoServiceStub(_Snapshots_desc, channel))
end # mutable struct SnapshotsStub

mutable struct SnapshotsBlockingStub <: AbstractProtoServiceStub{true}
    impl::ProtoServiceBlockingStub
    SnapshotsBlockingStub(channel::ProtoRpcChannel) = new(ProtoServiceBlockingStub(_Snapshots_desc, channel))
end # mutable struct SnapshotsBlockingStub

Create(stub::SnapshotsStub, controller::ProtoRpcController, inp::CreateSnapshotRequest, done::Function) = call_method(stub.impl, _Snapshots_methods[1], controller, inp, done)
Create(stub::SnapshotsBlockingStub, controller::ProtoRpcController, inp::CreateSnapshotRequest) = call_method(stub.impl, _Snapshots_methods[1], controller, inp)

List(stub::SnapshotsStub, controller::ProtoRpcController, inp::ListSnapshotsRequest, done::Function) = call_method(stub.impl, _Snapshots_methods[2], controller, inp, done)
List(stub::SnapshotsBlockingStub, controller::ProtoRpcController, inp::ListSnapshotsRequest) = call_method(stub.impl, _Snapshots_methods[2], controller, inp)

Delete(stub::SnapshotsStub, controller::ProtoRpcController, inp::DeleteSnapshotRequest, done::Function) = call_method(stub.impl, _Snapshots_methods[3], controller, inp, done)
Delete(stub::SnapshotsBlockingStub, controller::ProtoRpcController, inp::DeleteSnapshotRequest) = call_method(stub.impl, _Snapshots_methods[3], controller, inp)

CreateFull(stub::SnapshotsStub, controller::ProtoRpcController, inp::CreateFullSnapshotRequest, done::Function) = call_method(stub.impl, _Snapshots_methods[4], controller, inp, done)
CreateFull(stub::SnapshotsBlockingStub, controller::ProtoRpcController, inp::CreateFullSnapshotRequest) = call_method(stub.impl, _Snapshots_methods[4], controller, inp)

ListFull(stub::SnapshotsStub, controller::ProtoRpcController, inp::ListFullSnapshotsRequest, done::Function) = call_method(stub.impl, _Snapshots_methods[5], controller, inp, done)
ListFull(stub::SnapshotsBlockingStub, controller::ProtoRpcController, inp::ListFullSnapshotsRequest) = call_method(stub.impl, _Snapshots_methods[5], controller, inp)

DeleteFull(stub::SnapshotsStub, controller::ProtoRpcController, inp::DeleteFullSnapshotRequest, done::Function) = call_method(stub.impl, _Snapshots_methods[6], controller, inp, done)
DeleteFull(stub::SnapshotsBlockingStub, controller::ProtoRpcController, inp::DeleteFullSnapshotRequest) = call_method(stub.impl, _Snapshots_methods[6], controller, inp)

export CreateFullSnapshotRequest, ListFullSnapshotsRequest, DeleteFullSnapshotRequest, CreateSnapshotRequest, ListSnapshotsRequest, DeleteSnapshotRequest, SnapshotDescription, CreateSnapshotResponse, ListSnapshotsResponse, DeleteSnapshotResponse, Snapshots, SnapshotsStub, SnapshotsBlockingStub, Create, List, Delete, CreateFull, ListFull, DeleteFull
