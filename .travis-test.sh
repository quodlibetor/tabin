#!/bin/bash

set -ev

cargo build --verbose
if [[ "$TRAVIS_RUST_VERSION" == nightly ]] ; then
    cargo test --verbose
fi
cd turbine-plugins
cargo test --verbose
