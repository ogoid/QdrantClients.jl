# syntax: proto3
using ProtoBuf
import ProtoBuf.meta
import ProtoBuf.google.protobuf

mutable struct RaftMessage <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function RaftMessage(; kwargs...)
        obj = new(meta(RaftMessage), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct RaftMessage
const __meta_RaftMessage = Ref{ProtoMeta}()
function meta(::Type{RaftMessage})
    ProtoBuf.metalock() do
        if !isassigned(__meta_RaftMessage)
            __meta_RaftMessage[] = target = ProtoMeta(RaftMessage)
            allflds = Pair{Symbol,Union{Type,String}}[:message => Vector{UInt8}]
            meta(target, RaftMessage, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_RaftMessage[]
    end
end
function Base.getproperty(obj::RaftMessage, name::Symbol)
    if name === :message
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    else
        getfield(obj, name)
    end
end

mutable struct Peer <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Peer(; kwargs...)
        obj = new(meta(Peer), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Peer
const __meta_Peer = Ref{ProtoMeta}()
function meta(::Type{Peer})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Peer)
            __meta_Peer[] = target = ProtoMeta(Peer)
            allflds = Pair{Symbol,Union{Type,String}}[:uri => AbstractString, :id => UInt64]
            meta(target, Peer, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Peer[]
    end
end
function Base.getproperty(obj::Peer, name::Symbol)
    if name === :uri
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :id
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    else
        getfield(obj, name)
    end
end

mutable struct AllPeers <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function AllPeers(; kwargs...)
        obj = new(meta(AllPeers), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct AllPeers
const __meta_AllPeers = Ref{ProtoMeta}()
function meta(::Type{AllPeers})
    ProtoBuf.metalock() do
        if !isassigned(__meta_AllPeers)
            __meta_AllPeers[] = target = ProtoMeta(AllPeers)
            allflds = Pair{Symbol,Union{Type,String}}[:all_peers => Base.Vector{Peer}, :first_peer_id => UInt64]
            meta(target, AllPeers, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_AllPeers[]
    end
end
function Base.getproperty(obj::AllPeers, name::Symbol)
    if name === :all_peers
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Peer}
    elseif name === :first_peer_id
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    else
        getfield(obj, name)
    end
end

mutable struct AddPeerToKnownMessage <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function AddPeerToKnownMessage(; kwargs...)
        obj = new(meta(AddPeerToKnownMessage), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct AddPeerToKnownMessage
const __meta_AddPeerToKnownMessage = Ref{ProtoMeta}()
function meta(::Type{AddPeerToKnownMessage})
    ProtoBuf.metalock() do
        if !isassigned(__meta_AddPeerToKnownMessage)
            __meta_AddPeerToKnownMessage[] = target = ProtoMeta(AddPeerToKnownMessage)
            allflds = Pair{Symbol,Union{Type,String}}[:uri => AbstractString, :port => UInt32, :id => UInt64]
            oneofs = Int[1,2,0]
            oneof_names = Symbol[Symbol("_uri"),Symbol("_port")]
            meta(target, AddPeerToKnownMessage, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_AddPeerToKnownMessage[]
    end
end
function Base.getproperty(obj::AddPeerToKnownMessage, name::Symbol)
    if name === :uri
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :port
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :id
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    else
        getfield(obj, name)
    end
end

mutable struct PeerId <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PeerId(; kwargs...)
        obj = new(meta(PeerId), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct PeerId
const __meta_PeerId = Ref{ProtoMeta}()
function meta(::Type{PeerId})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PeerId)
            __meta_PeerId[] = target = ProtoMeta(PeerId)
            allflds = Pair{Symbol,Union{Type,String}}[:id => UInt64]
            meta(target, PeerId, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_PeerId[]
    end
end
function Base.getproperty(obj::PeerId, name::Symbol)
    if name === :id
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    else
        getfield(obj, name)
    end
end

mutable struct Uri <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Uri(; kwargs...)
        obj = new(meta(Uri), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Uri
const __meta_Uri = Ref{ProtoMeta}()
function meta(::Type{Uri})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Uri)
            __meta_Uri[] = target = ProtoMeta(Uri)
            allflds = Pair{Symbol,Union{Type,String}}[:uri => AbstractString]
            meta(target, Uri, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Uri[]
    end
end
function Base.getproperty(obj::Uri, name::Symbol)
    if name === :uri
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

# service methods for Raft
const _Raft_methods = MethodDescriptor[
        MethodDescriptor("Send", 1, RaftMessage, ProtoBuf.google.protobuf.Empty),
        MethodDescriptor("WhoIs", 2, PeerId, Uri),
        MethodDescriptor("AddPeerToKnown", 3, AddPeerToKnownMessage, AllPeers),
        MethodDescriptor("AddPeerAsParticipant", 4, PeerId, ProtoBuf.google.protobuf.Empty)
    ] # const _Raft_methods
const _Raft_desc = ServiceDescriptor("qdrant.Raft", 1, _Raft_methods)

Raft(impl::Module) = ProtoService(_Raft_desc, impl)

mutable struct RaftStub <: AbstractProtoServiceStub{false}
    impl::ProtoServiceStub
    RaftStub(channel::ProtoRpcChannel) = new(ProtoServiceStub(_Raft_desc, channel))
end # mutable struct RaftStub

mutable struct RaftBlockingStub <: AbstractProtoServiceStub{true}
    impl::ProtoServiceBlockingStub
    RaftBlockingStub(channel::ProtoRpcChannel) = new(ProtoServiceBlockingStub(_Raft_desc, channel))
end # mutable struct RaftBlockingStub

Send(stub::RaftStub, controller::ProtoRpcController, inp::RaftMessage, done::Function) = call_method(stub.impl, _Raft_methods[1], controller, inp, done)
Send(stub::RaftBlockingStub, controller::ProtoRpcController, inp::RaftMessage) = call_method(stub.impl, _Raft_methods[1], controller, inp)

WhoIs(stub::RaftStub, controller::ProtoRpcController, inp::PeerId, done::Function) = call_method(stub.impl, _Raft_methods[2], controller, inp, done)
WhoIs(stub::RaftBlockingStub, controller::ProtoRpcController, inp::PeerId) = call_method(stub.impl, _Raft_methods[2], controller, inp)

AddPeerToKnown(stub::RaftStub, controller::ProtoRpcController, inp::AddPeerToKnownMessage, done::Function) = call_method(stub.impl, _Raft_methods[3], controller, inp, done)
AddPeerToKnown(stub::RaftBlockingStub, controller::ProtoRpcController, inp::AddPeerToKnownMessage) = call_method(stub.impl, _Raft_methods[3], controller, inp)

AddPeerAsParticipant(stub::RaftStub, controller::ProtoRpcController, inp::PeerId, done::Function) = call_method(stub.impl, _Raft_methods[4], controller, inp, done)
AddPeerAsParticipant(stub::RaftBlockingStub, controller::ProtoRpcController, inp::PeerId) = call_method(stub.impl, _Raft_methods[4], controller, inp)

export RaftMessage, AllPeers, Peer, AddPeerToKnownMessage, PeerId, Uri, Raft, RaftStub, RaftBlockingStub, Send, WhoIs, AddPeerToKnown, AddPeerAsParticipant
