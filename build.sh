#!/bin/bash

build_args=()
if [[ -f build.env ]]; then
  build_args+=("--env-file" "build.env")
fi

exec podman run --rm -v "$PWD":/tasmota:z -e HOST_UID="$UID" -e HOST_GID="$GID" "${build_args[@]}" docker-tasmota -e tasmota
