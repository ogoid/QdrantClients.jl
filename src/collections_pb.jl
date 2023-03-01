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
    Symbol("Text") => Int32(5),
]...)

const TokenizerType = (;[
    Symbol("Unknown") => Int32(0),
    Symbol("Prefix") => Int32(1),
    Symbol("Whitespace") => Int32(2),
    Symbol("Word") => Int32(3),
]...)

mutable struct VectorParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function VectorParams(; kwargs...)
        obj = new(meta(VectorParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct VectorParams
const __meta_VectorParams = Ref{ProtoMeta}()
function meta(::Type{VectorParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_VectorParams)
            __meta_VectorParams[] = target = ProtoMeta(VectorParams)
            allflds = Pair{Symbol,Union{Type,String}}[:size => UInt64, :distance => Int32]
            meta(target, VectorParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_VectorParams[]
    end
end
function Base.getproperty(obj::VectorParams, name::Symbol)
    if name === :size
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :distance
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct VectorParamsMap_MapEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function VectorParamsMap_MapEntry(; kwargs...)
        obj = new(meta(VectorParamsMap_MapEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct VectorParamsMap_MapEntry (mapentry)
const __meta_VectorParamsMap_MapEntry = Ref{ProtoMeta}()
function meta(::Type{VectorParamsMap_MapEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_VectorParamsMap_MapEntry)
            __meta_VectorParamsMap_MapEntry[] = target = ProtoMeta(VectorParamsMap_MapEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => VectorParams]
            meta(target, VectorParamsMap_MapEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_VectorParamsMap_MapEntry[]
    end
end
function Base.getproperty(obj::VectorParamsMap_MapEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::VectorParams
    else
        getfield(obj, name)
    end
end

mutable struct VectorParamsMap <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function VectorParamsMap(; kwargs...)
        obj = new(meta(VectorParamsMap), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct VectorParamsMap
const __meta_VectorParamsMap = Ref{ProtoMeta}()
function meta(::Type{VectorParamsMap})
    ProtoBuf.metalock() do
        if !isassigned(__meta_VectorParamsMap)
            __meta_VectorParamsMap[] = target = ProtoMeta(VectorParamsMap)
            allflds = Pair{Symbol,Union{Type,String}}[:map => Base.Dict{AbstractString,VectorParams}]
            meta(target, VectorParamsMap, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_VectorParamsMap[]
    end
end
function Base.getproperty(obj::VectorParamsMap, name::Symbol)
    if name === :map
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,VectorParams}
    else
        getfield(obj, name)
    end
end

mutable struct VectorsConfig <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function VectorsConfig(; kwargs...)
        obj = new(meta(VectorsConfig), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct VectorsConfig
const __meta_VectorsConfig = Ref{ProtoMeta}()
function meta(::Type{VectorsConfig})
    ProtoBuf.metalock() do
        if !isassigned(__meta_VectorsConfig)
            __meta_VectorsConfig[] = target = ProtoMeta(VectorsConfig)
            allflds = Pair{Symbol,Union{Type,String}}[:params => VectorParams, :params_map => VectorParamsMap]
            oneofs = Int[1,1]
            oneof_names = Symbol[Symbol("config")]
            meta(target, VectorsConfig, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_VectorsConfig[]
    end
end
function Base.getproperty(obj::VectorsConfig, name::Symbol)
    if name === :params
        return (obj.__protobuf_jl_internal_values[name])::VectorParams
    elseif name === :params_map
        return (obj.__protobuf_jl_internal_values[name])::VectorParamsMap
    else
        getfield(obj, name)
    end
end

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
            allflds = Pair{Symbol,Union{Type,String}}[:m => UInt64, :ef_construct => UInt64, :full_scan_threshold => UInt64, :max_indexing_threads => UInt64, :on_disk => Bool, :payload_m => UInt64]
            oneofs = Int[1,2,3,4,5,6]
            oneof_names = Symbol[Symbol("_m"),Symbol("_ef_construct"),Symbol("_full_scan_threshold"),Symbol("_max_indexing_threads"),Symbol("_on_disk"),Symbol("_payload_m")]
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
    elseif name === :on_disk
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :payload_m
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
            fnum = Int[1,4,5,6,7,8,9,10,11,12,13]
            allflds = Pair{Symbol,Union{Type,String}}[:collection_name => AbstractString, :hnsw_config => HnswConfigDiff, :wal_config => WalConfigDiff, :optimizers_config => OptimizersConfigDiff, :shard_number => UInt32, :on_disk_payload => Bool, :timeout => UInt64, :vectors_config => VectorsConfig, :replication_factor => UInt32, :write_consistency_factor => UInt32, :init_from_collection => AbstractString]
            oneofs = Int[0,1,2,3,4,5,6,7,8,9,10]
            oneof_names = Symbol[Symbol("_hnsw_config"),Symbol("_wal_config"),Symbol("_optimizers_config"),Symbol("_shard_number"),Symbol("_on_disk_payload"),Symbol("_timeout"),Symbol("_vectors_config"),Symbol("_replication_factor"),Symbol("_write_consistency_factor"),Symbol("_init_from_collection")]
            meta(target, CreateCollection, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_CreateCollection[]
    end
end
function Base.getproperty(obj::CreateCollection, name::Symbol)
    if name === :collection_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
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
    elseif name === :vectors_config
        return (obj.__protobuf_jl_internal_values[name])::VectorsConfig
    elseif name === :replication_factor
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :write_consistency_factor
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :init_from_collection
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
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
            fnum = Int[3,4,5,6,7]
            allflds = Pair{Symbol,Union{Type,String}}[:shard_number => UInt32, :on_disk_payload => Bool, :vectors_config => VectorsConfig, :replication_factor => UInt32, :write_consistency_factor => UInt32]
            oneofs = Int[0,0,1,2,3]
            oneof_names = Symbol[Symbol("_vectors_config"),Symbol("_replication_factor"),Symbol("_write_consistency_factor")]
            meta(target, CollectionParams, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_CollectionParams[]
    end
end
function Base.getproperty(obj::CollectionParams, name::Symbol)
    if name === :shard_number
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :on_disk_payload
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :vectors_config
        return (obj.__protobuf_jl_internal_values[name])::VectorsConfig
    elseif name === :replication_factor
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :write_consistency_factor
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    else
        getfield(obj, name)
    end
end

mutable struct CollectionParamsDiff <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CollectionParamsDiff(; kwargs...)
        obj = new(meta(CollectionParamsDiff), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct CollectionParamsDiff
const __meta_CollectionParamsDiff = Ref{ProtoMeta}()
function meta(::Type{CollectionParamsDiff})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CollectionParamsDiff)
            __meta_CollectionParamsDiff[] = target = ProtoMeta(CollectionParamsDiff)
            allflds = Pair{Symbol,Union{Type,String}}[:replication_factor => UInt32, :write_consistency_factor => UInt32]
            oneofs = Int[1,2]
            oneof_names = Symbol[Symbol("_replication_factor"),Symbol("_write_consistency_factor")]
            meta(target, CollectionParamsDiff, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_CollectionParamsDiff[]
    end
end
function Base.getproperty(obj::CollectionParamsDiff, name::Symbol)
    if name === :replication_factor
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :write_consistency_factor
        return (obj.__protobuf_jl_internal_values[name])::UInt32
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
            allflds = Pair{Symbol,Union{Type,String}}[:collection_name => AbstractString, :optimizers_config => OptimizersConfigDiff, :timeout => UInt64, :params => CollectionParamsDiff]
            oneofs = Int[0,1,2,3]
            oneof_names = Symbol[Symbol("_optimizers_config"),Symbol("_timeout"),Symbol("_params")]
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
    elseif name === :params
        return (obj.__protobuf_jl_internal_values[name])::CollectionParamsDiff
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

mutable struct TextIndexParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function TextIndexParams(; kwargs...)
        obj = new(meta(TextIndexParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct TextIndexParams
const __meta_TextIndexParams = Ref{ProtoMeta}()
function meta(::Type{TextIndexParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_TextIndexParams)
            __meta_TextIndexParams[] = target = ProtoMeta(TextIndexParams)
            allflds = Pair{Symbol,Union{Type,String}}[:tokenizer => Int32, :lowercase => Bool, :min_token_len => UInt64, :max_token_len => UInt64]
            oneofs = Int[0,1,2,3]
            oneof_names = Symbol[Symbol("_lowercase"),Symbol("_min_token_len"),Symbol("_max_token_len")]
            meta(target, TextIndexParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_TextIndexParams[]
    end
end
function Base.getproperty(obj::TextIndexParams, name::Symbol)
    if name === :tokenizer
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :lowercase
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :min_token_len
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :max_token_len
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    else
        getfield(obj, name)
    end
end

mutable struct PayloadIndexParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PayloadIndexParams(; kwargs...)
        obj = new(meta(PayloadIndexParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct PayloadIndexParams
const __meta_PayloadIndexParams = Ref{ProtoMeta}()
function meta(::Type{PayloadIndexParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PayloadIndexParams)
            __meta_PayloadIndexParams[] = target = ProtoMeta(PayloadIndexParams)
            allflds = Pair{Symbol,Union{Type,String}}[:text_index_params => TextIndexParams]
            oneofs = Int[1]
            oneof_names = Symbol[Symbol("index_params")]
            meta(target, PayloadIndexParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_PayloadIndexParams[]
    end
end
function Base.getproperty(obj::PayloadIndexParams, name::Symbol)
    if name === :text_index_params
        return (obj.__protobuf_jl_internal_values[name])::TextIndexParams
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
            allflds = Pair{Symbol,Union{Type,String}}[:data_type => Int32, :params => PayloadIndexParams, :points => UInt64]
            oneofs = Int[0,1,2]
            oneof_names = Symbol[Symbol("_params"),Symbol("_points")]
            meta(target, PayloadSchemaInfo, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_PayloadSchemaInfo[]
    end
end
function Base.getproperty(obj::PayloadSchemaInfo, name::Symbol)
    if name === :data_type
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :params
        return (obj.__protobuf_jl_internal_values[name])::PayloadIndexParams
    elseif name === :points
        return (obj.__protobuf_jl_internal_values[name])::UInt64
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
            fnum = Int[1,2,3,4,7,8,9,10]
            allflds = Pair{Symbol,Union{Type,String}}[:status => Int32, :optimizer_status => OptimizerStatus, :vectors_count => UInt64, :segments_count => UInt64, :config => CollectionConfig, :payload_schema => Base.Dict{AbstractString,PayloadSchemaInfo}, :points_count => UInt64, :indexed_vectors_count => UInt64]
            oneofs = Int[0,0,0,0,0,0,0,1]
            oneof_names = Symbol[Symbol("_indexed_vectors_count")]
            meta(target, CollectionInfo, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
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

mutable struct ListAliasesRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ListAliasesRequest(; kwargs...)
        obj = new(meta(ListAliasesRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ListAliasesRequest
const __meta_ListAliasesRequest = Ref{ProtoMeta}()
function meta(::Type{ListAliasesRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ListAliasesRequest)
            __meta_ListAliasesRequest[] = target = ProtoMeta(ListAliasesRequest)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, ListAliasesRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ListAliasesRequest[]
    end
end

mutable struct ListCollectionAliasesRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ListCollectionAliasesRequest(; kwargs...)
        obj = new(meta(ListCollectionAliasesRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ListCollectionAliasesRequest
const __meta_ListCollectionAliasesRequest = Ref{ProtoMeta}()
function meta(::Type{ListCollectionAliasesRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ListCollectionAliasesRequest)
            __meta_ListCollectionAliasesRequest[] = target = ProtoMeta(ListCollectionAliasesRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:collection_name => AbstractString]
            meta(target, ListCollectionAliasesRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ListCollectionAliasesRequest[]
    end
end
function Base.getproperty(obj::ListCollectionAliasesRequest, name::Symbol)
    if name === :collection_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct AliasDescription <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function AliasDescription(; kwargs...)
        obj = new(meta(AliasDescription), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct AliasDescription
const __meta_AliasDescription = Ref{ProtoMeta}()
function meta(::Type{AliasDescription})
    ProtoBuf.metalock() do
        if !isassigned(__meta_AliasDescription)
            __meta_AliasDescription[] = target = ProtoMeta(AliasDescription)
            allflds = Pair{Symbol,Union{Type,String}}[:alias_name => AbstractString, :collection_name => AbstractString]
            meta(target, AliasDescription, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_AliasDescription[]
    end
end
function Base.getproperty(obj::AliasDescription, name::Symbol)
    if name === :alias_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :collection_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct ListAliasesResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ListAliasesResponse(; kwargs...)
        obj = new(meta(ListAliasesResponse), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ListAliasesResponse
const __meta_ListAliasesResponse = Ref{ProtoMeta}()
function meta(::Type{ListAliasesResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ListAliasesResponse)
            __meta_ListAliasesResponse[] = target = ProtoMeta(ListAliasesResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:aliases => Base.Vector{AliasDescription}, :time => Float64]
            meta(target, ListAliasesResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ListAliasesResponse[]
    end
end
function Base.getproperty(obj::ListAliasesResponse, name::Symbol)
    if name === :aliases
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{AliasDescription}
    elseif name === :time
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

export Distance, CollectionStatus, PayloadSchemaType, TokenizerType, VectorParams, VectorParamsMap_MapEntry, VectorParamsMap, VectorsConfig, GetCollectionInfoRequest, ListCollectionsRequest, CollectionDescription, GetCollectionInfoResponse, ListCollectionsResponse, OptimizerStatus, HnswConfigDiff, WalConfigDiff, OptimizersConfigDiff, CreateCollection, UpdateCollection, DeleteCollection, CollectionOperationResponse, CollectionParams, CollectionParamsDiff, CollectionConfig, TextIndexParams, PayloadIndexParams, PayloadSchemaInfo, CollectionInfo_PayloadSchemaEntry, CollectionInfo, ChangeAliases, AliasOperations, CreateAlias, RenameAlias, DeleteAlias, ListAliasesRequest, ListCollectionAliasesRequest, AliasDescription, ListAliasesResponse
# mapentries: "CollectionInfo_PayloadSchemaEntry" => ("AbstractString", "PayloadSchemaInfo"), "VectorParamsMap_MapEntry" => ("AbstractString", "VectorParams")
