#!/usr/bin/env bash

VERSION=v0.1.0

function install_goreleaser_poc() {
  if [[ "$OSTYPE" == "linux"* ]]; then
      case $(uname -m) in
          aarch64) ARCH=arm64;;
          armv7l)  ARCH=arm;;
          *)       ARCH=$(uname -m);;
      esac
      set -x
      curl -fsSL https://github.com/wahyudibo/goreleaser-poc/releases/download/$VERSION/goreleaser-poc_$VERSION_linux_$ARCH.tar.gz | tar -xzv goreleaser-poc
      sudo mv goreleaser-poc /usr/local/bin/goreleaser-poc
  elif [[ "$OSTYPE" == "darwin"* ]]; then
      ARCH=$(uname -m)
      set -x
      curl -fsSL https://github.com/wahyudibo/goreleaser-poc/releases/download/$VERSION/goreleaser-poc_$VERSION_darwin_$ARCH.tar.gz | tar -xzv goreleaser-poc
      sudo mv goreleaser-poc /usr/local/bin/goreleaser-poc
  else
      set +x
      echo "OS is not supported: $OSTYPE"
      exit 1
  fi

  set +x
}

install_goreleaser_poc