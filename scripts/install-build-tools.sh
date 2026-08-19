#!/usr/bin/env bash
# Install Hugo build toolchain with pinned versions.
# Keep version defaults in sync with .github/workflows/hugo.yml and hugo-build.yml.

set -euo pipefail

DART_SASS_VERSION="${DART_SASS_VERSION:-1.102.0}"
GO_VERSION="${GO_VERSION:-1.26.5}"
HUGO_VERSION="${HUGO_VERSION:-0.165.0}"
NODE_VERSION="${NODE_VERSION:-24.19.0}"

INSTALL_ROOT="${HOME}/.local"
TEMP_DIR="${RUNNER_TEMP:-${TMPDIR:-/tmp}}"

case "$(uname -m)" in
    x86_64)
        PLATFORM_ARCH="amd64"
        DART_SASS_ARCH="x64"
        ;;
    aarch64|arm64)
        PLATFORM_ARCH="arm64"
        DART_SASS_ARCH="arm64"
        ;;
    *)
        echo "error: unsupported architecture: $(uname -m)" >&2
        exit 1
        ;;
esac

append_path() {
    local dir="$1"

    if [[ -d "$dir" ]]; then
        case ":${PATH}:" in
            *":${dir}:"*) ;;
            *) export PATH="${dir}:${PATH}" ;;
        esac

        if [[ -n "${GITHUB_PATH:-}" ]]; then
            echo "$dir" >> "${GITHUB_PATH}"
        fi
    fi
}

persist_path_for_shells() {
    if [[ -n "${GITHUB_PATH:-}" ]]; then
        return 0
    fi

    local profile_contents='# Added by scripts/install-build-tools.sh
export PATH="${HOME}/.local/hugo:${HOME}/.local/dart-sass:${HOME}/.local/go/bin:${HOME}/.local/node/bin:${PATH}"'

    if command -v sudo >/dev/null 2>&1; then
        printf '%s\n' "${profile_contents}" | sudo tee /etc/profile.d/hugo-build-tools-path.sh >/dev/null
        sudo chmod 644 /etc/profile.d/hugo-build-tools-path.sh
        return 0
    fi

    if ! grep -q 'hugo-build-tools-path' "${HOME}/.bashrc" 2>/dev/null; then
        {
            echo
            echo '# hugo-build-tools-path (added by scripts/install-build-tools.sh)'
            echo "${profile_contents}"
        } >> "${HOME}/.bashrc"
    fi
}

mkdir -p "${INSTALL_ROOT}"

if [[ -f go.mod ]]; then
    echo "Installing Go ${GO_VERSION}..."
    curl -sfL --output-dir "${TEMP_DIR}" -O "https://go.dev/dl/go${GO_VERSION}.linux-${PLATFORM_ARCH}.tar.gz"
    rm -rf "${INSTALL_ROOT}/go"
    tar -C "${INSTALL_ROOT}" -xf "${TEMP_DIR}/go${GO_VERSION}.linux-${PLATFORM_ARCH}.tar.gz"
    append_path "${INSTALL_ROOT}/go/bin"
fi

if [[ -f package-lock.json ]]; then
    echo "Installing Node.js ${NODE_VERSION}..."
    curl -sfL --output-dir "${TEMP_DIR}" -O "https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-${PLATFORM_ARCH}.tar.xz"
    rm -rf "${INSTALL_ROOT}/node"
    mkdir -p "${INSTALL_ROOT}/node"
    tar -C "${INSTALL_ROOT}/node" --strip-components=1 -xf "${TEMP_DIR}/node-v${NODE_VERSION}-linux-${PLATFORM_ARCH}.tar.xz"
    append_path "${INSTALL_ROOT}/node/bin"
fi

echo "Installing Dart Sass ${DART_SASS_VERSION}..."
curl -sfL --output-dir "${TEMP_DIR}" -O "https://github.com/sass/dart-sass/releases/download/${DART_SASS_VERSION}/dart-sass-${DART_SASS_VERSION}-linux-${DART_SASS_ARCH}.tar.gz"
rm -rf "${INSTALL_ROOT}/dart-sass"
tar -C "${INSTALL_ROOT}" -xf "${TEMP_DIR}/dart-sass-${DART_SASS_VERSION}-linux-${DART_SASS_ARCH}.tar.gz"
append_path "${INSTALL_ROOT}/dart-sass"

echo "Installing Hugo ${HUGO_VERSION}..."
curl -sfL --output-dir "${TEMP_DIR}" -O "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_linux-${PLATFORM_ARCH}.tar.gz"
rm -rf "${INSTALL_ROOT}/hugo"
mkdir -p "${INSTALL_ROOT}/hugo"
tar -C "${INSTALL_ROOT}/hugo" -xf "${TEMP_DIR}/hugo_${HUGO_VERSION}_linux-${PLATFORM_ARCH}.tar.gz"
append_path "${INSTALL_ROOT}/hugo"
persist_path_for_shells

echo "Installed tool versions:"
command -v sass >/dev/null 2>&1 && echo "Dart Sass: $(sass --version)" || echo "Dart Sass: not installed"
command -v go >/dev/null 2>&1 && echo "Go: $(go version)" || echo "Go: not installed"
command -v hugo >/dev/null 2>&1 && echo "Hugo: $(hugo version)" || echo "Hugo: not installed"
command -v node >/dev/null 2>&1 && echo "Node.js: $(node --version)" || echo "Node.js: not installed"
