#!/bin/bash
set -e

TAG=codepainters/printrun:2.2.20250221

docker build -t $TAG .

echo To push:
echo docker push $TAG
