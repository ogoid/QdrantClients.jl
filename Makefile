
VERSION=0.9.1

SRC_URL=https://github.com/qdrant/qdrant/archive/refs/tags/v${VERSION}.tar.gz

.PHONY: all clean

all: src/QdrantClients.jl

clean:
	rm -rf proto src


src/QdrantClients.jl: proto/services.proto
	julia -tauto -e 'import gRPCClient; gRPCClient.generate("proto/services.proto"; outdir="src")'

proto/services.proto:
	mkdir -p proto
	curl -sL ${SRC_URL} | tar -xz --strip-components=6 -C proto qdrant-${VERSION}/lib/api/src/grpc/proto
	echo "$$SERVICES_PROTO" > proto/services.proto


export SERVICES_PROTO
define SERVICES_PROTO
syntax = "proto3";
package qdrant;
/* fool gRPCClient's generate
service Collections
service Points
service Snapshots
service Raft
*/
import "collections_service.proto";
import "points_service.proto";
import "snapshots_service.proto";
import "raft_service.proto";
endef
