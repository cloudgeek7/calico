#################################################################################################
# This file contains Makefile configuration parameters and metadata for this branch.
#################################################################################################

# The version of github.com/projectcalico/go-build to use.
GO_BUILD_VER = v0.89

# Version of Kubernetes to use for tests, bitnami/kubectl, and kubectl binary release.
K8S_VERSION=v1.26.8

# Version of various tools used in the build and tests.
COREDNS_VERSION=1.5.2
ETCD_VERSION=v3.5.1
# FIXME upgrading to kindest/node newer than v1.24.7 causes Node/kind-cluster and sig-network conformance
# tests to timeout or fail.
KINDEST_NODE_VERSION=v1.24.7
PROTOC_VER=v0.1
UBI_VERSION=8.7

# Configuration for Semaphore integration.
ORGANIZATION = projectcalico

# Configure git to access repositories using SSH.
GIT_USE_SSH = true

# The version of BIRD to use for calico/node builds and confd tests.
BIRD_VERSION=v0.3.3-206-g0f4d6086

# DEV_REGISTRIES configures the container image registries which are built from this
# repository. By default, just build images with calico/. Allow this variable to be overridden,
# as both CI/CD and the release tooling will override this to build publishable images.
DEV_REGISTRIES ?= calico

# RELEASE_REGISTIRES configures the container images registries which are published to
# as part of an official release.
# This variable is unused. Registries for releases are defined in hack/release/pkg/builder/builder.go
# RELEASE_REGISTRIES = quay.io/calico docker.io/calico gcr.io/projectcalico-org eu.gcr.io/projectcalico-org asia.gcr.io/projectcalico-org us.gcr.io/projectcalico-org

# The directory for windows image tarballs
WINDOWS_DIST = dist/windows

# FIXME: Use WINDOWS_HPC_VERSION and remove WINDOWS_VERSIONS when containerd v1.6 is EOL'd
# The Windows HPC container version used as base for Calico Windows images
WINDOWS_HPC_VERSION ?= v1.0.0
# The Windows versions used as base for Calico Windows images
WINDOWS_VERSIONS ?= 1809 ltsc2022
