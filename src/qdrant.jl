module qdrant
  const _ProtoBuf_Top_ = @static isdefined(parentmodule(@__MODULE__), :_ProtoBuf_Top_) ? (parentmodule(@__MODULE__))._ProtoBuf_Top_ : parentmodule(@__MODULE__)
  include("collections_pb.jl")
  include("collections_service_pb.jl")
  include("json_with_int_pb.jl")
  include("points_pb.jl")
  include("points_service_pb.jl")
  include("raft_service_pb.jl")
  include("snapshots_service_pb.jl")
  include("services_pb.jl")
end
