# bazel

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "bazel_skylib",
    sha256 = "97e70364e9249702246c0e9444bccdc4b847bed1eb03c5a3ece4f83dfe6abc44",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.0.2/bazel-skylib-1.0.2.tar.gz",
        "https://github.com/bazelbuild/bazel-skylib/releases/download/1.0.2/bazel-skylib-1.0.2.tar.gz",
    ],
)

load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

bazel_skylib_workspace()

# rust

load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

http_archive(
    name = "io_bazel_rules_rust",
    sha256 = "5ed804fcd10a506a5b8e9e59bc6b3b7f43bc30c87ce4670e6f78df43604894fd",
    strip_prefix = "rules_rust-fdf9655ba95616e0314b4e0ebab40bb0c5fe005c",
    urls = [
        # Master branch as of 2020-07-27
        "https://github.com/bazelbuild/rules_rust/archive/fdf9655ba95616e0314b4e0ebab40bb0c5fe005c.tar.gz",
    ],
)

load("@io_bazel_rules_rust//rust:repositories.bzl", "rust_repositories")

rust_repositories(
    edition = "2018",
    version = "1.46.0",
)

load("@io_bazel_rules_rust//:workspace.bzl", "bazel_version")

bazel_version(name = "bazel_version")

load("//cargo:crates.bzl", "raze_fetch_remote_crates")

raze_fetch_remote_crates()
