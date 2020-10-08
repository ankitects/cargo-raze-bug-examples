#!/bin/bash

set -e

test() {
    (cd cargo && cargo raze)
    bazel run //repro:repro_bin
}    

# works with stable 
cargo install cargo-raze --version 0.5.0
test

# fails with master
cargo install cargo-raze --git https://github.com/google/cargo-raze.git --rev fd59642efab68da8963d7c8540885ba59e7a19cc
test
