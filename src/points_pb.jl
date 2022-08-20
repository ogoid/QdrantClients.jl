# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

const FieldType = (;[
    Symbol("FieldTypeKeyword") => Int32(0),
    Symbol("FieldTypeInteger") => Int32(1),
    Symbol("FieldTypeFloat") => Int32(2),
    Symbol("FieldTypeGeo") => Int32(3),
]...)

const UpdateStatus = (;[
    Symbol("UnknownUpdateStatus") => Int32(0),
    Symbol("Acknowledged") => Int32(1),
    Symbol("Completed") => Int32(2),
]...)

mutable struct PointId <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PointId(; kwargs...)
        obj = new(meta(PointId), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct PointId
const __meta_PointId = Ref{ProtoMeta}()
function meta(::Type{PointId})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PointId)
            __meta_PointId[] = target = ProtoMeta(PointId)
            allflds = Pair{Symbol,Union{Type,String}}[:num => UInt64, :uuid => AbstractString]
            oneofs = Int[1,1]
            oneof_names = Symbol[Symbol("point_id_options")]
            meta(target, PointId, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_PointId[]
    end
end
function Base.getproperty(obj::PointId, name::Symbol)
    if name === :num
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :uuid
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct SetPayloadPoints_PayloadEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SetPayloadPoints_PayloadEntry(; kwargs...)
        obj = new(meta(SetPayloadPoints_PayloadEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SetPayloadPoints_PayloadEntry (mapentry)
const __meta_SetPayloadPoints_PayloadEntry = Ref{ProtoMeta}()
function meta(::Type{SetPayloadPoints_PayloadEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SetPayloadPoints_PayloadEntry)
            __meta_SetPayloadPoints_PayloadEntry[] = target = ProtoMeta(SetPayloadPoints_PayloadEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => Value]
            meta(target, SetPayloadPoints_PayloadEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SetPayloadPoints_PayloadEntry[]
    end
end
function Base.getproperty(obj::SetPayloadPoints_PayloadEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::Value
    else
        getfield(obj, name)
    end
end

mutable struct SetPayloadPoints <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SetPayloadPoints(; kwargs...)
        obj = new(meta(SetPayloadPoints), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SetPayloadPoints
const __meta_SetPayloadPoints = Ref{ProtoMeta}()
function meta(::Type{SetPayloadPoints})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SetPayloadPoints)
            __meta_SetPayloadPoints[] = target = ProtoMeta(SetPayloadPoints)
            allflds = Pair{Symbol,Union{Type,String}}[:collection_name => AbstractString, :wait => Bool, :payload => Base.Dict{AbstractString,Value}, :points => Base.Vector{PointId}]
            oneofs = Int[0,1,0,0]
            oneof_names = Symbol[Symbol("_wait")]
            meta(target, SetPayloadPoints, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_SetPayloadPoints[]
    end
end
function Base.getproperty(obj::SetPayloadPoints, name::Symbol)
    if name === :collection_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :wait
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :payload
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,Value}
    elseif name === :points
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{PointId}
    else
        getfield(obj, name)
    end
end

mutable struct DeletePayloadPoints <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function DeletePayloadPoints(; kwargs...)
        obj = new(meta(DeletePayloadPoints), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct DeletePayloadPoints
const __meta_DeletePayloadPoints = Ref{ProtoMeta}()
function meta(::Type{DeletePayloadPoints})
    ProtoBuf.metalock() do
        if !isassigned(__meta_DeletePayloadPoints)
            __meta_DeletePayloadPoints[] = target = ProtoMeta(DeletePayloadPoints)
            allflds = Pair{Symbol,Union{Type,String}}[:collection_name => AbstractString, :wait => Bool, :keys => Base.Vector{AbstractString}, :points => Base.Vector{PointId}]
            oneofs = Int[0,1,0,0]
            oneof_names = Symbol[Symbol("_wait")]
            meta(target, DeletePayloadPoints, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_DeletePayloadPoints[]
    end
end
function Base.getproperty(obj::DeletePayloadPoints, name::Symbol)
    if name === :collection_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :wait
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :keys
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{AbstractString}
    elseif name === :points
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{PointId}
    else
        getfield(obj, name)
    end
end

mutable struct CreateFieldIndexCollection <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CreateFieldIndexCollection(; kwargs...)
        obj = new(meta(CreateFieldIndexCollection), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct CreateFieldIndexCollection
const __meta_CreateFieldIndexCollection = Ref{ProtoMeta}()
function meta(::Type{CreateFieldIndexCollection})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CreateFieldIndexCollection)
            __meta_CreateFieldIndexCollection[] = target = ProtoMeta(CreateFieldIndexCollection)
            allflds = Pair{Symbol,Union{Type,String}}[:collection_name => AbstractString, :wait => Bool, :field_name => AbstractString, :field_type => Int32]
            oneofs = Int[0,1,0,2]
            oneof_names = Symbol[Symbol("_wait"),Symbol("_field_type")]
            meta(target, CreateFieldIndexCollection, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_CreateFieldIndexCollection[]
    end
end
function Base.getproperty(obj::CreateFieldIndexCollection, name::Symbol)
    if name === :collection_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :wait
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :field_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :field_type
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct DeleteFieldIndexCollection <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function DeleteFieldIndexCollection(; kwargs...)
        obj = new(meta(DeleteFieldIndexCollection), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct DeleteFieldIndexCollection
const __meta_DeleteFieldIndexCollection = Ref{ProtoMeta}()
function meta(::Type{DeleteFieldIndexCollection})
    ProtoBuf.metalock() do
        if !isassigned(__meta_DeleteFieldIndexCollection)
            __meta_DeleteFieldIndexCollection[] = target = ProtoMeta(DeleteFieldIndexCollection)
            allflds = Pair{Symbol,Union{Type,String}}[:collection_name => AbstractString, :wait => Bool, :field_name => AbstractString]
            oneofs = Int[0,1,0]
            oneof_names = Symbol[Symbol("_wait")]
            meta(target, DeleteFieldIndexCollection, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_DeleteFieldIndexCollection[]
    end
end
function Base.getproperty(obj::DeleteFieldIndexCollection, name::Symbol)
    if name === :collection_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :wait
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :field_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct PayloadIncludeSelector <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PayloadIncludeSelector(; kwargs...)
        obj = new(meta(PayloadIncludeSelector), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct PayloadIncludeSelector
const __meta_PayloadIncludeSelector = Ref{ProtoMeta}()
function meta(::Type{PayloadIncludeSelector})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PayloadIncludeSelector)
            __meta_PayloadIncludeSelector[] = target = ProtoMeta(PayloadIncludeSelector)
            allflds = Pair{Symbol,Union{Type,String}}[:fields => Base.Vector{AbstractString}]
            meta(target, PayloadIncludeSelector, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_PayloadIncludeSelector[]
    end
end
function Base.getproperty(obj::PayloadIncludeSelector, name::Symbol)
    if name === :fields
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{AbstractString}
    else
        getfield(obj, name)
    end
end

mutable struct PayloadExcludeSelector <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PayloadExcludeSelector(; kwargs...)
        obj = new(meta(PayloadExcludeSelector), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct PayloadExcludeSelector
const __meta_PayloadExcludeSelector = Ref{ProtoMeta}()
function meta(::Type{PayloadExcludeSelector})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PayloadExcludeSelector)
            __meta_PayloadExcludeSelector[] = target = ProtoMeta(PayloadExcludeSelector)
            allflds = Pair{Symbol,Union{Type,String}}[:fields => Base.Vector{AbstractString}]
            meta(target, PayloadExcludeSelector, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_PayloadExcludeSelector[]
    end
end
function Base.getproperty(obj::PayloadExcludeSelector, name::Symbol)
    if name === :fields
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{AbstractString}
    else
        getfield(obj, name)
    end
end

mutable struct WithPayloadSelector <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function WithPayloadSelector(; kwargs...)
        obj = new(meta(WithPayloadSelector), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct WithPayloadSelector
const __meta_WithPayloadSelector = Ref{ProtoMeta}()
function meta(::Type{WithPayloadSelector})
    ProtoBuf.metalock() do
        if !isassigned(__meta_WithPayloadSelector)
            __meta_WithPayloadSelector[] = target = ProtoMeta(WithPayloadSelector)
            allflds = Pair{Symbol,Union{Type,String}}[:enable => Bool, :include => PayloadIncludeSelector, :exclude => PayloadExcludeSelector]
            oneofs = Int[1,1,1]
            oneof_names = Symbol[Symbol("selector_options")]
            meta(target, WithPayloadSelector, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_WithPayloadSelector[]
    end
end
function Base.getproperty(obj::WithPayloadSelector, name::Symbol)
    if name === :enable
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :include
        return (obj.__protobuf_jl_internal_values[name])::PayloadIncludeSelector
    elseif name === :exclude
        return (obj.__protobuf_jl_internal_values[name])::PayloadExcludeSelector
    else
        getfield(obj, name)
    end
end

mutable struct GetPoints <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GetPoints(; kwargs...)
        obj = new(meta(GetPoints), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GetPoints
const __meta_GetPoints = Ref{ProtoMeta}()
function meta(::Type{GetPoints})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GetPoints)
            __meta_GetPoints[] = target = ProtoMeta(GetPoints)
            allflds = Pair{Symbol,Union{Type,String}}[:collection_name => AbstractString, :ids => Base.Vector{PointId}, :with_vector => Bool, :with_payload => WithPayloadSelector]
            oneofs = Int[0,0,1,0]
            oneof_names = Symbol[Symbol("_with_vector")]
            meta(target, GetPoints, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_GetPoints[]
    end
end
function Base.getproperty(obj::GetPoints, name::Symbol)
    if name === :collection_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :ids
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{PointId}
    elseif name === :with_vector
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :with_payload
        return (obj.__protobuf_jl_internal_values[name])::WithPayloadSelector
    else
        getfield(obj, name)
    end
end

mutable struct SearchParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SearchParams(; kwargs...)
        obj = new(meta(SearchParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SearchParams
const __meta_SearchParams = Ref{ProtoMeta}()
function meta(::Type{SearchParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SearchParams)
            __meta_SearchParams[] = target = ProtoMeta(SearchParams)
            allflds = Pair{Symbol,Union{Type,String}}[:hnsw_ef => UInt64]
            oneofs = Int[1]
            oneof_names = Symbol[Symbol("_hnsw_ef")]
            meta(target, SearchParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_SearchParams[]
    end
end
function Base.getproperty(obj::SearchParams, name::Symbol)
    if name === :hnsw_ef
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    else
        getfield(obj, name)
    end
end

mutable struct UpdateResult <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function UpdateResult(; kwargs...)
        obj = new(meta(UpdateResult), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct UpdateResult
const __meta_UpdateResult = Ref{ProtoMeta}()
function meta(::Type{UpdateResult})
    ProtoBuf.metalock() do
        if !isassigned(__meta_UpdateResult)
            __meta_UpdateResult[] = target = ProtoMeta(UpdateResult)
            allflds = Pair{Symbol,Union{Type,String}}[:operation_id => UInt64, :status => Int32]
            meta(target, UpdateResult, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_UpdateResult[]
    end
end
function Base.getproperty(obj::UpdateResult, name::Symbol)
    if name === :operation_id
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :status
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct PointsOperationResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PointsOperationResponse(; kwargs...)
        obj = new(meta(PointsOperationResponse), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct PointsOperationResponse
const __meta_PointsOperationResponse = Ref{ProtoMeta}()
function meta(::Type{PointsOperationResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PointsOperationResponse)
            __meta_PointsOperationResponse[] = target = ProtoMeta(PointsOperationResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:result => UpdateResult, :time => Float64]
            meta(target, PointsOperationResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_PointsOperationResponse[]
    end
end
function Base.getproperty(obj::PointsOperationResponse, name::Symbol)
    if name === :result
        return (obj.__protobuf_jl_internal_values[name])::UpdateResult
    elseif name === :time
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

mutable struct ScoredPoint_PayloadEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ScoredPoint_PayloadEntry(; kwargs...)
        obj = new(meta(ScoredPoint_PayloadEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ScoredPoint_PayloadEntry (mapentry)
const __meta_ScoredPoint_PayloadEntry = Ref{ProtoMeta}()
function meta(::Type{ScoredPoint_PayloadEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ScoredPoint_PayloadEntry)
            __meta_ScoredPoint_PayloadEntry[] = target = ProtoMeta(ScoredPoint_PayloadEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => Value]
            meta(target, ScoredPoint_PayloadEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ScoredPoint_PayloadEntry[]
    end
end
function Base.getproperty(obj::ScoredPoint_PayloadEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::Value
    else
        getfield(obj, name)
    end
end

mutable struct ScoredPoint <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ScoredPoint(; kwargs...)
        obj = new(meta(ScoredPoint), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ScoredPoint
const __meta_ScoredPoint = Ref{ProtoMeta}()
function meta(::Type{ScoredPoint})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ScoredPoint)
            __meta_ScoredPoint[] = target = ProtoMeta(ScoredPoint)
            pack = Symbol[:vector]
            allflds = Pair{Symbol,Union{Type,String}}[:id => PointId, :payload => Base.Dict{AbstractString,Value}, :score => Float32, :vector => Base.Vector{Float32}, :version => UInt64]
            meta(target, ScoredPoint, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ScoredPoint[]
    end
end
function Base.getproperty(obj::ScoredPoint, name::Symbol)
    if name === :id
        return (obj.__protobuf_jl_internal_values[name])::PointId
    elseif name === :payload
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,Value}
    elseif name === :score
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :vector
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float32}
    elseif name === :version
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    else
        getfield(obj, name)
    end
end

mutable struct SearchResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SearchResponse(; kwargs...)
        obj = new(meta(SearchResponse), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SearchResponse
const __meta_SearchResponse = Ref{ProtoMeta}()
function meta(::Type{SearchResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SearchResponse)
            __meta_SearchResponse[] = target = ProtoMeta(SearchResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:result => Base.Vector{ScoredPoint}, :time => Float64]
            meta(target, SearchResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SearchResponse[]
    end
end
function Base.getproperty(obj::SearchResponse, name::Symbol)
    if name === :result
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ScoredPoint}
    elseif name === :time
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

mutable struct CountResult <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CountResult(; kwargs...)
        obj = new(meta(CountResult), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct CountResult
const __meta_CountResult = Ref{ProtoMeta}()
function meta(::Type{CountResult})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CountResult)
            __meta_CountResult[] = target = ProtoMeta(CountResult)
            allflds = Pair{Symbol,Union{Type,String}}[:count => UInt64]
            meta(target, CountResult, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_CountResult[]
    end
end
function Base.getproperty(obj::CountResult, name::Symbol)
    if name === :count
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    else
        getfield(obj, name)
    end
end

mutable struct CountResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CountResponse(; kwargs...)
        obj = new(meta(CountResponse), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct CountResponse
const __meta_CountResponse = Ref{ProtoMeta}()
function meta(::Type{CountResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CountResponse)
            __meta_CountResponse[] = target = ProtoMeta(CountResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:result => CountResult, :time => Float64]
            meta(target, CountResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_CountResponse[]
    end
end
function Base.getproperty(obj::CountResponse, name::Symbol)
    if name === :result
        return (obj.__protobuf_jl_internal_values[name])::CountResult
    elseif name === :time
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

mutable struct RetrievedPoint_PayloadEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function RetrievedPoint_PayloadEntry(; kwargs...)
        obj = new(meta(RetrievedPoint_PayloadEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct RetrievedPoint_PayloadEntry (mapentry)
const __meta_RetrievedPoint_PayloadEntry = Ref{ProtoMeta}()
function meta(::Type{RetrievedPoint_PayloadEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_RetrievedPoint_PayloadEntry)
            __meta_RetrievedPoint_PayloadEntry[] = target = ProtoMeta(RetrievedPoint_PayloadEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => Value]
            meta(target, RetrievedPoint_PayloadEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_RetrievedPoint_PayloadEntry[]
    end
end
function Base.getproperty(obj::RetrievedPoint_PayloadEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::Value
    else
        getfield(obj, name)
    end
end

mutable struct RetrievedPoint <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function RetrievedPoint(; kwargs...)
        obj = new(meta(RetrievedPoint), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct RetrievedPoint
const __meta_RetrievedPoint = Ref{ProtoMeta}()
function meta(::Type{RetrievedPoint})
    ProtoBuf.metalock() do
        if !isassigned(__meta_RetrievedPoint)
            __meta_RetrievedPoint[] = target = ProtoMeta(RetrievedPoint)
            pack = Symbol[:vector]
            allflds = Pair{Symbol,Union{Type,String}}[:id => PointId, :payload => Base.Dict{AbstractString,Value}, :vector => Base.Vector{Float32}]
            meta(target, RetrievedPoint, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_RetrievedPoint[]
    end
end
function Base.getproperty(obj::RetrievedPoint, name::Symbol)
    if name === :id
        return (obj.__protobuf_jl_internal_values[name])::PointId
    elseif name === :payload
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,Value}
    elseif name === :vector
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float32}
    else
        getfield(obj, name)
    end
end

mutable struct ScrollResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ScrollResponse(; kwargs...)
        obj = new(meta(ScrollResponse), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ScrollResponse
const __meta_ScrollResponse = Ref{ProtoMeta}()
function meta(::Type{ScrollResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ScrollResponse)
            __meta_ScrollResponse[] = target = ProtoMeta(ScrollResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:next_page_offset => PointId, :result => Base.Vector{RetrievedPoint}, :time => Float64]
            oneofs = Int[1,0,0]
            oneof_names = Symbol[Symbol("_next_page_offset")]
            meta(target, ScrollResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_ScrollResponse[]
    end
end
function Base.getproperty(obj::ScrollResponse, name::Symbol)
    if name === :next_page_offset
        return (obj.__protobuf_jl_internal_values[name])::PointId
    elseif name === :result
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{RetrievedPoint}
    elseif name === :time
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

mutable struct GetResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GetResponse(; kwargs...)
        obj = new(meta(GetResponse), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GetResponse
const __meta_GetResponse = Ref{ProtoMeta}()
function meta(::Type{GetResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GetResponse)
            __meta_GetResponse[] = target = ProtoMeta(GetResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:result => Base.Vector{RetrievedPoint}, :time => Float64]
            meta(target, GetResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GetResponse[]
    end
end
function Base.getproperty(obj::GetResponse, name::Symbol)
    if name === :result
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{RetrievedPoint}
    elseif name === :time
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

mutable struct RecommendResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function RecommendResponse(; kwargs...)
        obj = new(meta(RecommendResponse), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct RecommendResponse
const __meta_RecommendResponse = Ref{ProtoMeta}()
function meta(::Type{RecommendResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_RecommendResponse)
            __meta_RecommendResponse[] = target = ProtoMeta(RecommendResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:result => Base.Vector{ScoredPoint}, :time => Float64]
            meta(target, RecommendResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_RecommendResponse[]
    end
end
function Base.getproperty(obj::RecommendResponse, name::Symbol)
    if name === :result
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ScoredPoint}
    elseif name === :time
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

mutable struct IsEmptyCondition <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function IsEmptyCondition(; kwargs...)
        obj = new(meta(IsEmptyCondition), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct IsEmptyCondition
const __meta_IsEmptyCondition = Ref{ProtoMeta}()
function meta(::Type{IsEmptyCondition})
    ProtoBuf.metalock() do
        if !isassigned(__meta_IsEmptyCondition)
            __meta_IsEmptyCondition[] = target = ProtoMeta(IsEmptyCondition)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString]
            meta(target, IsEmptyCondition, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_IsEmptyCondition[]
    end
end
function Base.getproperty(obj::IsEmptyCondition, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct HasIdCondition <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function HasIdCondition(; kwargs...)
        obj = new(meta(HasIdCondition), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct HasIdCondition
const __meta_HasIdCondition = Ref{ProtoMeta}()
function meta(::Type{HasIdCondition})
    ProtoBuf.metalock() do
        if !isassigned(__meta_HasIdCondition)
            __meta_HasIdCondition[] = target = ProtoMeta(HasIdCondition)
            allflds = Pair{Symbol,Union{Type,String}}[:has_id => Base.Vector{PointId}]
            meta(target, HasIdCondition, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_HasIdCondition[]
    end
end
function Base.getproperty(obj::HasIdCondition, name::Symbol)
    if name === :has_id
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{PointId}
    else
        getfield(obj, name)
    end
end

mutable struct Match <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Match(; kwargs...)
        obj = new(meta(Match), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Match
const __meta_Match = Ref{ProtoMeta}()
function meta(::Type{Match})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Match)
            __meta_Match[] = target = ProtoMeta(Match)
            allflds = Pair{Symbol,Union{Type,String}}[:keyword => AbstractString, :integer => Int64, :boolean => Bool]
            oneofs = Int[1,1,1]
            oneof_names = Symbol[Symbol("match_value")]
            meta(target, Match, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_Match[]
    end
end
function Base.getproperty(obj::Match, name::Symbol)
    if name === :keyword
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :integer
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :boolean
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct Range <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Range(; kwargs...)
        obj = new(meta(Range), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Range
const __meta_Range = Ref{ProtoMeta}()
function meta(::Type{Range})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Range)
            __meta_Range[] = target = ProtoMeta(Range)
            allflds = Pair{Symbol,Union{Type,String}}[:lt => Float64, :gt => Float64, :gte => Float64, :lte => Float64]
            oneofs = Int[1,2,3,4]
            oneof_names = Symbol[Symbol("_lt"),Symbol("_gt"),Symbol("_gte"),Symbol("_lte")]
            meta(target, Range, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_Range[]
    end
end
function Base.getproperty(obj::Range, name::Symbol)
    if name === :lt
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :gt
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :gte
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :lte
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

mutable struct ValuesCount <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ValuesCount(; kwargs...)
        obj = new(meta(ValuesCount), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ValuesCount
const __meta_ValuesCount = Ref{ProtoMeta}()
function meta(::Type{ValuesCount})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ValuesCount)
            __meta_ValuesCount[] = target = ProtoMeta(ValuesCount)
            allflds = Pair{Symbol,Union{Type,String}}[:lt => UInt64, :gt => UInt64, :gte => UInt64, :lte => UInt64]
            oneofs = Int[1,2,3,4]
            oneof_names = Symbol[Symbol("_lt"),Symbol("_gt"),Symbol("_gte"),Symbol("_lte")]
            meta(target, ValuesCount, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_ValuesCount[]
    end
end
function Base.getproperty(obj::ValuesCount, name::Symbol)
    if name === :lt
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :gt
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :gte
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :lte
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    else
        getfield(obj, name)
    end
end

mutable struct PointsIdsList <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PointsIdsList(; kwargs...)
        obj = new(meta(PointsIdsList), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct PointsIdsList
const __meta_PointsIdsList = Ref{ProtoMeta}()
function meta(::Type{PointsIdsList})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PointsIdsList)
            __meta_PointsIdsList[] = target = ProtoMeta(PointsIdsList)
            allflds = Pair{Symbol,Union{Type,String}}[:ids => Base.Vector{PointId}]
            meta(target, PointsIdsList, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_PointsIdsList[]
    end
end
function Base.getproperty(obj::PointsIdsList, name::Symbol)
    if name === :ids
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{PointId}
    else
        getfield(obj, name)
    end
end

mutable struct PointStruct_PayloadEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PointStruct_PayloadEntry(; kwargs...)
        obj = new(meta(PointStruct_PayloadEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct PointStruct_PayloadEntry (mapentry)
const __meta_PointStruct_PayloadEntry = Ref{ProtoMeta}()
function meta(::Type{PointStruct_PayloadEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PointStruct_PayloadEntry)
            __meta_PointStruct_PayloadEntry[] = target = ProtoMeta(PointStruct_PayloadEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => Value]
            meta(target, PointStruct_PayloadEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_PointStruct_PayloadEntry[]
    end
end
function Base.getproperty(obj::PointStruct_PayloadEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::Value
    else
        getfield(obj, name)
    end
end

mutable struct PointStruct <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PointStruct(; kwargs...)
        obj = new(meta(PointStruct), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct PointStruct
const __meta_PointStruct = Ref{ProtoMeta}()
function meta(::Type{PointStruct})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PointStruct)
            __meta_PointStruct[] = target = ProtoMeta(PointStruct)
            pack = Symbol[:vector]
            allflds = Pair{Symbol,Union{Type,String}}[:id => PointId, :vector => Base.Vector{Float32}, :payload => Base.Dict{AbstractString,Value}]
            meta(target, PointStruct, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_PointStruct[]
    end
end
function Base.getproperty(obj::PointStruct, name::Symbol)
    if name === :id
        return (obj.__protobuf_jl_internal_values[name])::PointId
    elseif name === :vector
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float32}
    elseif name === :payload
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,Value}
    else
        getfield(obj, name)
    end
end

mutable struct UpsertPoints <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function UpsertPoints(; kwargs...)
        obj = new(meta(UpsertPoints), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct UpsertPoints
const __meta_UpsertPoints = Ref{ProtoMeta}()
function meta(::Type{UpsertPoints})
    ProtoBuf.metalock() do
        if !isassigned(__meta_UpsertPoints)
            __meta_UpsertPoints[] = target = ProtoMeta(UpsertPoints)
            allflds = Pair{Symbol,Union{Type,String}}[:collection_name => AbstractString, :wait => Bool, :points => Base.Vector{PointStruct}]
            oneofs = Int[0,1,0]
            oneof_names = Symbol[Symbol("_wait")]
            meta(target, UpsertPoints, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_UpsertPoints[]
    end
end
function Base.getproperty(obj::UpsertPoints, name::Symbol)
    if name === :collection_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :wait
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :points
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{PointStruct}
    else
        getfield(obj, name)
    end
end

mutable struct GeoPoint <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GeoPoint(; kwargs...)
        obj = new(meta(GeoPoint), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GeoPoint
const __meta_GeoPoint = Ref{ProtoMeta}()
function meta(::Type{GeoPoint})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GeoPoint)
            __meta_GeoPoint[] = target = ProtoMeta(GeoPoint)
            allflds = Pair{Symbol,Union{Type,String}}[:lon => Float64, :lat => Float64]
            meta(target, GeoPoint, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GeoPoint[]
    end
end
function Base.getproperty(obj::GeoPoint, name::Symbol)
    if name === :lon
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :lat
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

mutable struct GeoRadius <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GeoRadius(; kwargs...)
        obj = new(meta(GeoRadius), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GeoRadius
const __meta_GeoRadius = Ref{ProtoMeta}()
function meta(::Type{GeoRadius})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GeoRadius)
            __meta_GeoRadius[] = target = ProtoMeta(GeoRadius)
            allflds = Pair{Symbol,Union{Type,String}}[:center => GeoPoint, :radius => Float32]
            meta(target, GeoRadius, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GeoRadius[]
    end
end
function Base.getproperty(obj::GeoRadius, name::Symbol)
    if name === :center
        return (obj.__protobuf_jl_internal_values[name])::GeoPoint
    elseif name === :radius
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct GeoBoundingBox <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GeoBoundingBox(; kwargs...)
        obj = new(meta(GeoBoundingBox), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GeoBoundingBox
const __meta_GeoBoundingBox = Ref{ProtoMeta}()
function meta(::Type{GeoBoundingBox})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GeoBoundingBox)
            __meta_GeoBoundingBox[] = target = ProtoMeta(GeoBoundingBox)
            allflds = Pair{Symbol,Union{Type,String}}[:top_left => GeoPoint, :bottom_right => GeoPoint]
            meta(target, GeoBoundingBox, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GeoBoundingBox[]
    end
end
function Base.getproperty(obj::GeoBoundingBox, name::Symbol)
    if name === :top_left
        return (obj.__protobuf_jl_internal_values[name])::GeoPoint
    elseif name === :bottom_right
        return (obj.__protobuf_jl_internal_values[name])::GeoPoint
    else
        getfield(obj, name)
    end
end

mutable struct FieldCondition <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function FieldCondition(; kwargs...)
        obj = new(meta(FieldCondition), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct FieldCondition
const __meta_FieldCondition = Ref{ProtoMeta}()
function meta(::Type{FieldCondition})
    ProtoBuf.metalock() do
        if !isassigned(__meta_FieldCondition)
            __meta_FieldCondition[] = target = ProtoMeta(FieldCondition)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :match => Match, :range => Range, :geo_bounding_box => GeoBoundingBox, :geo_radius => GeoRadius, :values_count => ValuesCount]
            meta(target, FieldCondition, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_FieldCondition[]
    end
end
function Base.getproperty(obj::FieldCondition, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :match
        return (obj.__protobuf_jl_internal_values[name])::Match
    elseif name === :range
        return (obj.__protobuf_jl_internal_values[name])::Range
    elseif name === :geo_bounding_box
        return (obj.__protobuf_jl_internal_values[name])::GeoBoundingBox
    elseif name === :geo_radius
        return (obj.__protobuf_jl_internal_values[name])::GeoRadius
    elseif name === :values_count
        return (obj.__protobuf_jl_internal_values[name])::ValuesCount
    else
        getfield(obj, name)
    end
end

mutable struct DeletePoints <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function DeletePoints(; kwargs...)
        obj = new(meta(DeletePoints), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct DeletePoints (has cyclic type dependency)
const __meta_DeletePoints = Ref{ProtoMeta}()
function meta(::Type{DeletePoints})
    ProtoBuf.metalock() do
        if !isassigned(__meta_DeletePoints)
            __meta_DeletePoints[] = target = ProtoMeta(DeletePoints)
            allflds = Pair{Symbol,Union{Type,String}}[:collection_name => AbstractString, :wait => Bool, :points => "PointsSelector"]
            oneofs = Int[0,1,0]
            oneof_names = Symbol[Symbol("_wait")]
            meta(target, DeletePoints, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_DeletePoints[]
    end
end
function Base.getproperty(obj::DeletePoints, name::Symbol)
    if name === :collection_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :wait
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :points
        return (obj.__protobuf_jl_internal_values[name])::Any
    else
        getfield(obj, name)
    end
end

mutable struct ClearPayloadPoints <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ClearPayloadPoints(; kwargs...)
        obj = new(meta(ClearPayloadPoints), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ClearPayloadPoints (has cyclic type dependency)
const __meta_ClearPayloadPoints = Ref{ProtoMeta}()
function meta(::Type{ClearPayloadPoints})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ClearPayloadPoints)
            __meta_ClearPayloadPoints[] = target = ProtoMeta(ClearPayloadPoints)
            allflds = Pair{Symbol,Union{Type,String}}[:collection_name => AbstractString, :wait => Bool, :points => "PointsSelector"]
            oneofs = Int[0,1,0]
            oneof_names = Symbol[Symbol("_wait")]
            meta(target, ClearPayloadPoints, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_ClearPayloadPoints[]
    end
end
function Base.getproperty(obj::ClearPayloadPoints, name::Symbol)
    if name === :collection_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :wait
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :points
        return (obj.__protobuf_jl_internal_values[name])::Any
    else
        getfield(obj, name)
    end
end

mutable struct SearchPoints <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SearchPoints(; kwargs...)
        obj = new(meta(SearchPoints), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SearchPoints (has cyclic type dependency)
const __meta_SearchPoints = Ref{ProtoMeta}()
function meta(::Type{SearchPoints})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SearchPoints)
            __meta_SearchPoints[] = target = ProtoMeta(SearchPoints)
            pack = Symbol[:vector]
            allflds = Pair{Symbol,Union{Type,String}}[:collection_name => AbstractString, :vector => Base.Vector{Float32}, :filter => "Filter", :limit => UInt64, :with_vector => Bool, :with_payload => WithPayloadSelector, :params => SearchParams, :score_threshold => Float32, :offset => UInt64]
            oneofs = Int[0,0,0,0,1,0,0,2,3]
            oneof_names = Symbol[Symbol("_with_vector"),Symbol("_score_threshold"),Symbol("_offset")]
            meta(target, SearchPoints, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_SearchPoints[]
    end
end
function Base.getproperty(obj::SearchPoints, name::Symbol)
    if name === :collection_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :vector
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float32}
    elseif name === :filter
        return (obj.__protobuf_jl_internal_values[name])::Any
    elseif name === :limit
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :with_vector
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :with_payload
        return (obj.__protobuf_jl_internal_values[name])::WithPayloadSelector
    elseif name === :params
        return (obj.__protobuf_jl_internal_values[name])::SearchParams
    elseif name === :score_threshold
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :offset
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    else
        getfield(obj, name)
    end
end

mutable struct ScrollPoints <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ScrollPoints(; kwargs...)
        obj = new(meta(ScrollPoints), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ScrollPoints (has cyclic type dependency)
const __meta_ScrollPoints = Ref{ProtoMeta}()
function meta(::Type{ScrollPoints})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ScrollPoints)
            __meta_ScrollPoints[] = target = ProtoMeta(ScrollPoints)
            allflds = Pair{Symbol,Union{Type,String}}[:collection_name => AbstractString, :filter => "Filter", :offset => PointId, :limit => UInt32, :with_vector => Bool, :with_payload => WithPayloadSelector]
            oneofs = Int[0,0,1,2,3,0]
            oneof_names = Symbol[Symbol("_offset"),Symbol("_limit"),Symbol("_with_vector")]
            meta(target, ScrollPoints, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_ScrollPoints[]
    end
end
function Base.getproperty(obj::ScrollPoints, name::Symbol)
    if name === :collection_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :filter
        return (obj.__protobuf_jl_internal_values[name])::Any
    elseif name === :offset
        return (obj.__protobuf_jl_internal_values[name])::PointId
    elseif name === :limit
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :with_vector
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :with_payload
        return (obj.__protobuf_jl_internal_values[name])::WithPayloadSelector
    else
        getfield(obj, name)
    end
end

mutable struct RecommendPoints <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function RecommendPoints(; kwargs...)
        obj = new(meta(RecommendPoints), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct RecommendPoints (has cyclic type dependency)
const __meta_RecommendPoints = Ref{ProtoMeta}()
function meta(::Type{RecommendPoints})
    ProtoBuf.metalock() do
        if !isassigned(__meta_RecommendPoints)
            __meta_RecommendPoints[] = target = ProtoMeta(RecommendPoints)
            allflds = Pair{Symbol,Union{Type,String}}[:collection_name => AbstractString, :positive => Base.Vector{PointId}, :negative => Base.Vector{PointId}, :filter => "Filter", :limit => UInt64, :with_vector => Bool, :with_payload => WithPayloadSelector, :params => SearchParams, :score_threshold => Float32, :offset => UInt64]
            oneofs = Int[0,0,0,0,0,1,0,0,2,3]
            oneof_names = Symbol[Symbol("_with_vector"),Symbol("_score_threshold"),Symbol("_offset")]
            meta(target, RecommendPoints, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_RecommendPoints[]
    end
end
function Base.getproperty(obj::RecommendPoints, name::Symbol)
    if name === :collection_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :positive
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{PointId}
    elseif name === :negative
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{PointId}
    elseif name === :filter
        return (obj.__protobuf_jl_internal_values[name])::Any
    elseif name === :limit
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :with_vector
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :with_payload
        return (obj.__protobuf_jl_internal_values[name])::WithPayloadSelector
    elseif name === :params
        return (obj.__protobuf_jl_internal_values[name])::SearchParams
    elseif name === :score_threshold
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :offset
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    else
        getfield(obj, name)
    end
end

mutable struct CountPoints <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CountPoints(; kwargs...)
        obj = new(meta(CountPoints), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct CountPoints (has cyclic type dependency)
const __meta_CountPoints = Ref{ProtoMeta}()
function meta(::Type{CountPoints})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CountPoints)
            __meta_CountPoints[] = target = ProtoMeta(CountPoints)
            allflds = Pair{Symbol,Union{Type,String}}[:collection_name => AbstractString, :filter => "Filter", :exact => Bool]
            oneofs = Int[0,0,1]
            oneof_names = Symbol[Symbol("_exact")]
            meta(target, CountPoints, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_CountPoints[]
    end
end
function Base.getproperty(obj::CountPoints, name::Symbol)
    if name === :collection_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :filter
        return (obj.__protobuf_jl_internal_values[name])::Any
    elseif name === :exact
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct Filter <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Filter(; kwargs...)
        obj = new(meta(Filter), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Filter (has cyclic type dependency)
const __meta_Filter = Ref{ProtoMeta}()
function meta(::Type{Filter})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Filter)
            __meta_Filter[] = target = ProtoMeta(Filter)
            allflds = Pair{Symbol,Union{Type,String}}[:should => "Base.Vector{Condition}", :must => "Base.Vector{Condition}", :must_not => "Base.Vector{Condition}"]
            meta(target, Filter, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Filter[]
    end
end
function Base.getproperty(obj::Filter, name::Symbol)
    if name === :should
        return (obj.__protobuf_jl_internal_values[name])::Any
    elseif name === :must
        return (obj.__protobuf_jl_internal_values[name])::Any
    elseif name === :must_not
        return (obj.__protobuf_jl_internal_values[name])::Any
    else
        getfield(obj, name)
    end
end

mutable struct Condition <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Condition(; kwargs...)
        obj = new(meta(Condition), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Condition (has cyclic type dependency)
const __meta_Condition = Ref{ProtoMeta}()
function meta(::Type{Condition})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Condition)
            __meta_Condition[] = target = ProtoMeta(Condition)
            allflds = Pair{Symbol,Union{Type,String}}[:field => FieldCondition, :isEmpty => IsEmptyCondition, :hasId => HasIdCondition, :filter => Filter]
            oneofs = Int[1,1,1,1]
            oneof_names = Symbol[Symbol("condition_one_of")]
            meta(target, Condition, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_Condition[]
    end
end
function Base.getproperty(obj::Condition, name::Symbol)
    if name === :field
        return (obj.__protobuf_jl_internal_values[name])::FieldCondition
    elseif name === :isEmpty
        return (obj.__protobuf_jl_internal_values[name])::IsEmptyCondition
    elseif name === :hasId
        return (obj.__protobuf_jl_internal_values[name])::HasIdCondition
    elseif name === :filter
        return (obj.__protobuf_jl_internal_values[name])::Filter
    else
        getfield(obj, name)
    end
end

mutable struct PointsSelector <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PointsSelector(; kwargs...)
        obj = new(meta(PointsSelector), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct PointsSelector (has cyclic type dependency)
const __meta_PointsSelector = Ref{ProtoMeta}()
function meta(::Type{PointsSelector})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PointsSelector)
            __meta_PointsSelector[] = target = ProtoMeta(PointsSelector)
            allflds = Pair{Symbol,Union{Type,String}}[:points => PointsIdsList, :filter => Filter]
            oneofs = Int[1,1]
            oneof_names = Symbol[Symbol("points_selector_one_of")]
            meta(target, PointsSelector, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_PointsSelector[]
    end
end
function Base.getproperty(obj::PointsSelector, name::Symbol)
    if name === :points
        return (obj.__protobuf_jl_internal_values[name])::PointsIdsList
    elseif name === :filter
        return (obj.__protobuf_jl_internal_values[name])::Filter
    else
        getfield(obj, name)
    end
end

export FieldType, UpdateStatus, PointId, UpsertPoints, DeletePoints, GetPoints, SetPayloadPoints_PayloadEntry, SetPayloadPoints, DeletePayloadPoints, ClearPayloadPoints, CreateFieldIndexCollection, DeleteFieldIndexCollection, PayloadIncludeSelector, PayloadExcludeSelector, WithPayloadSelector, SearchParams, SearchPoints, ScrollPoints, RecommendPoints, CountPoints, PointsOperationResponse, UpdateResult, ScoredPoint_PayloadEntry, ScoredPoint, SearchResponse, CountResponse, ScrollResponse, CountResult, RetrievedPoint_PayloadEntry, RetrievedPoint, GetResponse, RecommendResponse, Filter, Condition, IsEmptyCondition, HasIdCondition, FieldCondition, Match, Range, GeoBoundingBox, GeoRadius, ValuesCount, PointsSelector, PointsIdsList, PointStruct_PayloadEntry, PointStruct, GeoPoint, DeletePoints, ClearPayloadPoints, SearchPoints, ScrollPoints, RecommendPoints, CountPoints, Filter, Condition, PointsSelector
# mapentries: "SetPayloadPoints_PayloadEntry" => ("AbstractString", "Value"), "RetrievedPoint_PayloadEntry" => ("AbstractString", "Value"), "PointStruct_PayloadEntry" => ("AbstractString", "Value"), "ScoredPoint_PayloadEntry" => ("AbstractString", "Value")
