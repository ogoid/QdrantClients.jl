# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

const Distance = (;[
    Symbol("UnknownDistance") => Int32(0),
    Symbol("Cosine") => Int32(1),
    Symbol("Euclid") => Int32(2),
    Symbol("Dot") => Int32(3),
]...)

const CollectionStatus = (;[
    Symbol("UnknownCollectionStatus") => Int32(0),
    Symbol("Green") => Int32(1),
    Symbol("Yellow") => Int32(2),
    Symbol("Red") => Int32(3),
]...)

const PayloadSchemaType = (;[
    Symbol("UnknownType") => Int32(0),
    Symbol("Keyword") => Int32(1),
    Symbol("Integer") => Int32(2),
    Symbol("Float") => Int32(3),
    Symbol("Geo") => Int32(4),
]...)

mutable struct GetCollectionInfoRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GetCollectionInfoRequest(; kwargs...)
        obj = new(meta(GetCollectionInfoRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GetCollectionInfoRequest
const __meta_GetCollectionInfoRequest = Ref{ProtoMeta}()
function meta(::Type{GetCollectionInfoRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GetCollectionInfoRequest)
            __meta_GetCollectionInfoRequest[] = target = ProtoMeta(GetCollectionInfoRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:collection_name => AbstractString]
            meta(target, GetCollectionInfoRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GetCollectionInfoRequest[]
    end
end
function Base.getproperty(obj::GetCollectionInfoRequest, name::Symbol)
    if name === :collection_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct ListCollectionsRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ListCollectionsRequest(; kwargs...)
        obj = new(meta(ListCollectionsRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ListCollectionsRequest
const __meta_ListCollectionsRequest = Ref{ProtoMeta}()
function meta(::Type{ListCollectionsRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ListCollectionsRequest)
            __meta_ListCollectionsRequest[] = target = ProtoMeta(ListCollectionsRequest)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, ListCollectionsRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ListCollectionsRequest[]
    end
end

mutable struct CollectionDescription <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CollectionDescription(; kwargs...)
        obj = new(meta(CollectionDescription), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct CollectionDescription
const __meta_CollectionDescription = Ref{ProtoMeta}()
function meta(::Type{CollectionDescription})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CollectionDescription)
            __meta_CollectionDescription[] = target = ProtoMeta(CollectionDescription)
            allflds = Pair{Symbol,Union{Type,String}}[:name => AbstractString]
            meta(target, CollectionDescription, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_CollectionDescription[]
    end
end
function Base.getproperty(obj::CollectionDescription, name::Symbol)
    if name === :name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct ListCollectionsResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ListCollectionsResponse(; kwargs...)
        obj = new(meta(ListCollectionsResponse), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ListCollectionsResponse
const __meta_ListCollectionsResponse = Ref{ProtoMeta}()
function meta(::Type{ListCollectionsResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ListCollectionsResponse)
            __meta_ListCollectionsResponse[] = target = ProtoMeta(ListCollectionsResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:collections => Base.Vector{CollectionDescription}, :time => Float64]
            meta(target, ListCollectionsResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ListCollectionsResponse[]
    end
end
function Base.getproperty(obj::ListCollectionsResponse, name::Symbol)
    if name === :collections
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{CollectionDescription}
    elseif name === :time
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

mutable struct OptimizerStatus <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function OptimizerStatus(; kwargs...)
        obj = new(meta(OptimizerStatus), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct OptimizerStatus
const __meta_OptimizerStatus = Ref{ProtoMeta}()
function meta(::Type{OptimizerStatus})
    ProtoBuf.metalock() do
        if !isassigned(__meta_OptimizerStatus)
            __meta_OptimizerStatus[] = target = ProtoMeta(OptimizerStatus)
            allflds = Pair{Symbol,Union{Type,String}}[:ok => Bool, :error => AbstractString]
            meta(target, OptimizerStatus, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_OptimizerStatus[]
    end
end
function Base.getproperty(obj::OptimizerStatus, name::Symbol)
    if name === :ok
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :error
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct HnswConfigDiff <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function HnswConfigDiff(; kwargs...)
        obj = new(meta(HnswConfigDiff), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct HnswConfigDiff
const __meta_HnswConfigDiff = Ref{ProtoMeta}()
function meta(::Type{HnswConfigDiff})
    ProtoBuf.metalock() do
        if !isassigned(__meta_HnswConfigDiff)
            __meta_HnswConfigDiff[] = target = ProtoMeta(HnswConfigDiff)
            allflds = Pair{Symbol,Union{Type,String}}[:m => UInt64, :ef_construct => UInt64, :full_scan_threshold => UInt64, :max_indexing_threads => UInt64]
            oneofs = Int[1,2,3,4]
            oneof_names = Symbol[Symbol("_m"),Symbol("_ef_construct"),Symbol("_full_scan_threshold"),Symbol("_max_indexing_threads")]
            meta(target, HnswConfigDiff, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_HnswConfigDiff[]
    end
end
function Base.getproperty(obj::HnswConfigDiff, name::Symbol)
    if name === :m
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :ef_construct
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :full_scan_threshold
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :max_indexing_threads
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    else
        getfield(obj, name)
    end
end

mutable struct WalConfigDiff <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function WalConfigDiff(; kwargs...)
        obj = new(meta(WalConfigDiff), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct WalConfigDiff
const __meta_WalConfigDiff = Ref{ProtoMeta}()
function meta(::Type{WalConfigDiff})
    ProtoBuf.metalock() do
        if !isassigned(__meta_WalConfigDiff)
            __meta_WalConfigDiff[] = target = ProtoMeta(WalConfigDiff)
            allflds = Pair{Symbol,Union{Type,String}}[:wal_capacity_mb => UInt64, :wal_segments_ahead => UInt64]
            oneofs = Int[1,2]
            oneof_names = Symbol[Symbol("_wal_capacity_mb"),Symbol("_wal_segments_ahead")]
            meta(target, WalConfigDiff, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_WalConfigDiff[]
    end
end
function Base.getproperty(obj::WalConfigDiff, name::Symbol)
    if name === :wal_capacity_mb
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :wal_segments_ahead
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    else
        getfield(obj, name)
    end
end

mutable struct OptimizersConfigDiff <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function OptimizersConfigDiff(; kwargs...)
        obj = new(meta(OptimizersConfigDiff), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct OptimizersConfigDiff
const __meta_OptimizersConfigDiff = Ref{ProtoMeta}()
function meta(::Type{OptimizersConfigDiff})
    ProtoBuf.metalock() do
        if !isassigned(__meta_OptimizersConfigDiff)
            __meta_OptimizersConfigDiff[] = target = ProtoMeta(OptimizersConfigDiff)
            allflds = Pair{Symbol,Union{Type,String}}[:deleted_threshold => Float64, :vacuum_min_vector_number => UInt64, :default_segment_number => UInt64, :max_segment_size => UInt64, :memmap_threshold => UInt64, :indexing_threshold => UInt64, :flush_interval_sec => UInt64, :max_optimization_threads => UInt64]
            oneofs = Int[1,2,3,4,5,6,7,8]
            oneof_names = Symbol[Symbol("_deleted_threshold"),Symbol("_vacuum_min_vector_number"),Symbol("_default_segment_number"),Symbol("_max_segment_size"),Symbol("_memmap_threshold"),Symbol("_indexing_threshold"),Symbol("_flush_interval_sec"),Symbol("_max_optimization_threads")]
            meta(target, OptimizersConfigDiff, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_OptimizersConfigDiff[]
    end
end
function Base.getproperty(obj::OptimizersConfigDiff, name::Symbol)
    if name === :deleted_threshold
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :vacuum_min_vector_number
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :default_segment_number
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :max_segment_size
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :memmap_threshold
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :indexing_threshold
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :flush_interval_sec
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :max_optimization_threads
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    else
        getfield(obj, name)
    end
end

mutable struct CreateCollection <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CreateCollection(; kwargs...)
        obj = new(meta(CreateCollection), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct CreateCollection
const __meta_CreateCollection = Ref{ProtoMeta}()
function meta(::Type{CreateCollection})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CreateCollection)
            __meta_CreateCollection[] = target = ProtoMeta(CreateCollection)
            allflds = Pair{Symbol,Union{Type,String}}[:collection_name => AbstractString, :vector_size => UInt64, :distance => Int32, :hnsw_config => HnswConfigDiff, :wal_config => WalConfigDiff, :optimizers_config => OptimizersConfigDiff, :shard_number => UInt32, :on_disk_payload => Bool, :timeout => UInt64]
            oneofs = Int[0,0,0,1,2,3,4,5,6]
            oneof_names = Symbol[Symbol("_hnsw_config"),Symbol("_wal_config"),Symbol("_optimizers_config"),Symbol("_shard_number"),Symbol("_on_disk_payload"),Symbol("_timeout")]
            meta(target, CreateCollection, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_CreateCollection[]
    end
end
function Base.getproperty(obj::CreateCollection, name::Symbol)
    if name === :collection_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :vector_size
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :distance
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :hnsw_config
        return (obj.__protobuf_jl_internal_values[name])::HnswConfigDiff
    elseif name === :wal_config
        return (obj.__protobuf_jl_internal_values[name])::WalConfigDiff
    elseif name === :optimizers_config
        return (obj.__protobuf_jl_internal_values[name])::OptimizersConfigDiff
    elseif name === :shard_number
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :on_disk_payload
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :timeout
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    else
        getfield(obj, name)
    end
end

mutable struct UpdateCollection <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function UpdateCollection(; kwargs...)
        obj = new(meta(UpdateCollection), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct UpdateCollection
const __meta_UpdateCollection = Ref{ProtoMeta}()
function meta(::Type{UpdateCollection})
    ProtoBuf.metalock() do
        if !isassigned(__meta_UpdateCollection)
            __meta_UpdateCollection[] = target = ProtoMeta(UpdateCollection)
            allflds = Pair{Symbol,Union{Type,String}}[:collection_name => AbstractString, :optimizers_config => OptimizersConfigDiff, :timeout => UInt64]
            oneofs = Int[0,1,2]
            oneof_names = Symbol[Symbol("_optimizers_config"),Symbol("_timeout")]
            meta(target, UpdateCollection, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_UpdateCollection[]
    end
end
function Base.getproperty(obj::UpdateCollection, name::Symbol)
    if name === :collection_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :optimizers_config
        return (obj.__protobuf_jl_internal_values[name])::OptimizersConfigDiff
    elseif name === :timeout
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    else
        getfield(obj, name)
    end
end

mutable struct DeleteCollection <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function DeleteCollection(; kwargs...)
        obj = new(meta(DeleteCollection), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct DeleteCollection
const __meta_DeleteCollection = Ref{ProtoMeta}()
function meta(::Type{DeleteCollection})
    ProtoBuf.metalock() do
        if !isassigned(__meta_DeleteCollection)
            __meta_DeleteCollection[] = target = ProtoMeta(DeleteCollection)
            allflds = Pair{Symbol,Union{Type,String}}[:collection_name => AbstractString, :timeout => UInt64]
            oneofs = Int[0,1]
            oneof_names = Symbol[Symbol("_timeout")]
            meta(target, DeleteCollection, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_DeleteCollection[]
    end
end
function Base.getproperty(obj::DeleteCollection, name::Symbol)
    if name === :collection_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :timeout
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    else
        getfield(obj, name)
    end
end

mutable struct CollectionOperationResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CollectionOperationResponse(; kwargs...)
        obj = new(meta(CollectionOperationResponse), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct CollectionOperationResponse
const __meta_CollectionOperationResponse = Ref{ProtoMeta}()
function meta(::Type{CollectionOperationResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CollectionOperationResponse)
            __meta_CollectionOperationResponse[] = target = ProtoMeta(CollectionOperationResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:result => Bool, :time => Float64]
            meta(target, CollectionOperationResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_CollectionOperationResponse[]
    end
end
function Base.getproperty(obj::CollectionOperationResponse, name::Symbol)
    if name === :result
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :time
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

mutable struct CollectionParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CollectionParams(; kwargs...)
        obj = new(meta(CollectionParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct CollectionParams
const __meta_CollectionParams = Ref{ProtoMeta}()
function meta(::Type{CollectionParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CollectionParams)
            __meta_CollectionParams[] = target = ProtoMeta(CollectionParams)
            allflds = Pair{Symbol,Union{Type,String}}[:vector_size => UInt64, :distance => Int32, :shard_number => UInt32, :on_disk_payload => Bool]
            meta(target, CollectionParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_CollectionParams[]
    end
end
function Base.getproperty(obj::CollectionParams, name::Symbol)
    if name === :vector_size
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :distance
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :shard_number
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :on_disk_payload
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct CollectionConfig <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CollectionConfig(; kwargs...)
        obj = new(meta(CollectionConfig), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct CollectionConfig
const __meta_CollectionConfig = Ref{ProtoMeta}()
function meta(::Type{CollectionConfig})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CollectionConfig)
            __meta_CollectionConfig[] = target = ProtoMeta(CollectionConfig)
            allflds = Pair{Symbol,Union{Type,String}}[:params => CollectionParams, :hnsw_config => HnswConfigDiff, :optimizer_config => OptimizersConfigDiff, :wal_config => WalConfigDiff]
            meta(target, CollectionConfig, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_CollectionConfig[]
    end
end
function Base.getproperty(obj::CollectionConfig, name::Symbol)
    if name === :params
        return (obj.__protobuf_jl_internal_values[name])::CollectionParams
    elseif name === :hnsw_config
        return (obj.__protobuf_jl_internal_values[name])::HnswConfigDiff
    elseif name === :optimizer_config
        return (obj.__protobuf_jl_internal_values[name])::OptimizersConfigDiff
    elseif name === :wal_config
        return (obj.__protobuf_jl_internal_values[name])::WalConfigDiff
    else
        getfield(obj, name)
    end
end

mutable struct PayloadSchemaInfo <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PayloadSchemaInfo(; kwargs...)
        obj = new(meta(PayloadSchemaInfo), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct PayloadSchemaInfo
const __meta_PayloadSchemaInfo = Ref{ProtoMeta}()
function meta(::Type{PayloadSchemaInfo})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PayloadSchemaInfo)
            __meta_PayloadSchemaInfo[] = target = ProtoMeta(PayloadSchemaInfo)
            allflds = Pair{Symbol,Union{Type,String}}[:data_type => Int32]
            meta(target, PayloadSchemaInfo, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_PayloadSchemaInfo[]
    end
end
function Base.getproperty(obj::PayloadSchemaInfo, name::Symbol)
    if name === :data_type
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct CollectionInfo_PayloadSchemaEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CollectionInfo_PayloadSchemaEntry(; kwargs...)
        obj = new(meta(CollectionInfo_PayloadSchemaEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct CollectionInfo_PayloadSchemaEntry (mapentry)
const __meta_CollectionInfo_PayloadSchemaEntry = Ref{ProtoMeta}()
function meta(::Type{CollectionInfo_PayloadSchemaEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CollectionInfo_PayloadSchemaEntry)
            __meta_CollectionInfo_PayloadSchemaEntry[] = target = ProtoMeta(CollectionInfo_PayloadSchemaEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => PayloadSchemaInfo]
            meta(target, CollectionInfo_PayloadSchemaEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_CollectionInfo_PayloadSchemaEntry[]
    end
end
function Base.getproperty(obj::CollectionInfo_PayloadSchemaEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::PayloadSchemaInfo
    else
        getfield(obj, name)
    end
end

mutable struct CollectionInfo <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CollectionInfo(; kwargs...)
        obj = new(meta(CollectionInfo), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct CollectionInfo
const __meta_CollectionInfo = Ref{ProtoMeta}()
function meta(::Type{CollectionInfo})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CollectionInfo)
            __meta_CollectionInfo[] = target = ProtoMeta(CollectionInfo)
            allflds = Pair{Symbol,Union{Type,String}}[:status => Int32, :optimizer_status => OptimizerStatus, :vectors_count => UInt64, :segments_count => UInt64, :disk_data_size => UInt64, :ram_data_size => UInt64, :config => CollectionConfig, :payload_schema => Base.Dict{AbstractString,PayloadSchemaInfo}, :points_count => UInt64, :indexed_vectors_count => UInt64]
            oneofs = Int[0,0,0,0,0,0,0,0,0,1]
            oneof_names = Symbol[Symbol("_indexed_vectors_count")]
            meta(target, CollectionInfo, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_CollectionInfo[]
    end
end
function Base.getproperty(obj::CollectionInfo, name::Symbol)
    if name === :status
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :optimizer_status
        return (obj.__protobuf_jl_internal_values[name])::OptimizerStatus
    elseif name === :vectors_count
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :segments_count
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :disk_data_size
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :ram_data_size
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :config
        return (obj.__protobuf_jl_internal_values[name])::CollectionConfig
    elseif name === :payload_schema
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,PayloadSchemaInfo}
    elseif name === :points_count
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :indexed_vectors_count
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    else
        getfield(obj, name)
    end
end

mutable struct GetCollectionInfoResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GetCollectionInfoResponse(; kwargs...)
        obj = new(meta(GetCollectionInfoResponse), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GetCollectionInfoResponse
const __meta_GetCollectionInfoResponse = Ref{ProtoMeta}()
function meta(::Type{GetCollectionInfoResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GetCollectionInfoResponse)
            __meta_GetCollectionInfoResponse[] = target = ProtoMeta(GetCollectionInfoResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:result => CollectionInfo, :time => Float64]
            meta(target, GetCollectionInfoResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GetCollectionInfoResponse[]
    end
end
function Base.getproperty(obj::GetCollectionInfoResponse, name::Symbol)
    if name === :result
        return (obj.__protobuf_jl_internal_values[name])::CollectionInfo
    elseif name === :time
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

mutable struct CreateAlias <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CreateAlias(; kwargs...)
        obj = new(meta(CreateAlias), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct CreateAlias
const __meta_CreateAlias = Ref{ProtoMeta}()
function meta(::Type{CreateAlias})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CreateAlias)
            __meta_CreateAlias[] = target = ProtoMeta(CreateAlias)
            allflds = Pair{Symbol,Union{Type,String}}[:collection_name => AbstractString, :alias_name => AbstractString]
            meta(target, CreateAlias, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_CreateAlias[]
    end
end
function Base.getproperty(obj::CreateAlias, name::Symbol)
    if name === :collection_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :alias_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct RenameAlias <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function RenameAlias(; kwargs...)
        obj = new(meta(RenameAlias), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct RenameAlias
const __meta_RenameAlias = Ref{ProtoMeta}()
function meta(::Type{RenameAlias})
    ProtoBuf.metalock() do
        if !isassigned(__meta_RenameAlias)
            __meta_RenameAlias[] = target = ProtoMeta(RenameAlias)
            allflds = Pair{Symbol,Union{Type,String}}[:old_alias_name => AbstractString, :new_alias_name => AbstractString]
            meta(target, RenameAlias, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_RenameAlias[]
    end
end
function Base.getproperty(obj::RenameAlias, name::Symbol)
    if name === :old_alias_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :new_alias_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct DeleteAlias <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function DeleteAlias(; kwargs...)
        obj = new(meta(DeleteAlias), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct DeleteAlias
const __meta_DeleteAlias = Ref{ProtoMeta}()
function meta(::Type{DeleteAlias})
    ProtoBuf.metalock() do
        if !isassigned(__meta_DeleteAlias)
            __meta_DeleteAlias[] = target = ProtoMeta(DeleteAlias)
            allflds = Pair{Symbol,Union{Type,String}}[:alias_name => AbstractString]
            meta(target, DeleteAlias, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_DeleteAlias[]
    end
end
function Base.getproperty(obj::DeleteAlias, name::Symbol)
    if name === :alias_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct AliasOperations <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function AliasOperations(; kwargs...)
        obj = new(meta(AliasOperations), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct AliasOperations
const __meta_AliasOperations = Ref{ProtoMeta}()
function meta(::Type{AliasOperations})
    ProtoBuf.metalock() do
        if !isassigned(__meta_AliasOperations)
            __meta_AliasOperations[] = target = ProtoMeta(AliasOperations)
            allflds = Pair{Symbol,Union{Type,String}}[:create_alias => CreateAlias, :rename_alias => RenameAlias, :delete_alias => DeleteAlias]
            oneofs = Int[1,1,1]
            oneof_names = Symbol[Symbol("action")]
            meta(target, AliasOperations, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_AliasOperations[]
    end
end
function Base.getproperty(obj::AliasOperations, name::Symbol)
    if name === :create_alias
        return (obj.__protobuf_jl_internal_values[name])::CreateAlias
    elseif name === :rename_alias
        return (obj.__protobuf_jl_internal_values[name])::RenameAlias
    elseif name === :delete_alias
        return (obj.__protobuf_jl_internal_values[name])::DeleteAlias
    else
        getfield(obj, name)
    end
end

mutable struct ChangeAliases <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ChangeAliases(; kwargs...)
        obj = new(meta(ChangeAliases), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ChangeAliases
const __meta_ChangeAliases = Ref{ProtoMeta}()
function meta(::Type{ChangeAliases})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ChangeAliases)
            __meta_ChangeAliases[] = target = ProtoMeta(ChangeAliases)
            allflds = Pair{Symbol,Union{Type,String}}[:actions => Base.Vector{AliasOperations}, :timeout => UInt64]
            oneofs = Int[0,1]
            oneof_names = Symbol[Symbol("_timeout")]
            meta(target, ChangeAliases, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_ChangeAliases[]
    end
end
function Base.getproperty(obj::ChangeAliases, name::Symbol)
    if name === :actions
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{AliasOperations}
    elseif name === :timeout
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    else
        getfield(obj, name)
    end
end

export Distance, CollectionStatus, PayloadSchemaType, GetCollectionInfoRequest, ListCollectionsRequest, CollectionDescription, GetCollectionInfoResponse, ListCollectionsResponse, OptimizerStatus, HnswConfigDiff, WalConfigDiff, OptimizersConfigDiff, CreateCollection, UpdateCollection, DeleteCollection, CollectionOperationResponse, CollectionParams, CollectionConfig, PayloadSchemaInfo, CollectionInfo_PayloadSchemaEntry, CollectionInfo, ChangeAliases, AliasOperations, CreateAlias, RenameAlias, DeleteAlias
# mapentries: "CollectionInfo_PayloadSchemaEntry" => ("AbstractString", "PayloadSchemaInfo")
