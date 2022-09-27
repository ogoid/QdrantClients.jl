#!usr/bin/env bash

set -eou pipefail

sources=$(ls *_service.proto | grep -v internal)
services=$(awk '/^service .* {/{print $2}' $sources)

echo "syntax=\"proto3\";"
echo "package qdrant;"

echo "/* fool gRPCClient's generator"
for service in $services; do
    echo "service $service {"
done
echo "*/"

for source in $sources; do
    echo "import \"$source\";"
done

