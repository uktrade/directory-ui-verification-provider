#!/usr/bin/env bash
set -e

VERSION=1.0.0

wget https://github.com/alphagov/verify-service-provider/releases/download/$VERSION/verify-service-provider-$VERSION.zip
unzip verify-service-provider-$VERSION.zip
rm verify-service-provider-$VERSION.zip
cd ./verify-service-provider-$VERSION
./bin/verify-service-provider server verify-service-provider.yml
