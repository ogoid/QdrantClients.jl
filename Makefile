
VERSION=0.9.1

SRC_URL=https://github.com/qdrant/qdrant/archive/refs/tags/v${VERSION}.tar.gz

.PHONY: all clean

all: src/QdrantClients.jl

clean:
	rm -rf proto src

src/QdrantClients.jl: proto/services.proto
	julia -e 'import Pkg; Pkg.add("protoc_jll")'
	mkdir -p src && echo "module QdrantClients; end" > src/QdrantClients.jl
	julia --project -e 'import Pkg; Pkg.instantiate()'
	rm src/QdrantClients.jl
	julia --project -e 'import gRPCClient; gRPCClient.generate("proto/services.proto"; outdir="src")'

proto/services.proto:
	mkdir -p proto
	curl -sL ${SRC_URL} | tar -xz --strip-components=6 -C proto qdrant-${VERSION}/lib/api/src/grpc/proto
	cd proto && bash ../generate_services.sh > services.proto

