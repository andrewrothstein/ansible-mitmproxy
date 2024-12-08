#!/usr/bin/env sh
set -e
DIR=~/Downloads
MIRROR=https://snapshots.mitmproxy.org

dl() {
    local ver=$1
    local os=$2
    local arch=$3
    local archive_type=${4:-tar.gz}
    local platform="${os}-${arch}"
    local file="mitmproxy-${ver}-${platform}.${archive_type}"
    local lfile="${DIR}/${file}"

    # https://downloads.mitmproxy.org/10.3.0/mitmproxy-10.3.0-linux-x86_64.tar.gz
    local url="${MIRROR}/${ver}/${file}"

    if [ ! -e $lfile ];
    then
        curl -sSLf -o $lfile $url
    fi

    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $platform $(sha256sum $lfile | awk '{print $1}')
}

dl_ver() {
    local ver=$1
    printf "  '%s':\n" $ver
    dl $ver linux x86_64
    dl $ver macos arm64
    dl $ver macos x86_64
    dl $ver windows x86_64 zip
}

dl_ver ${1:-11.0.2}
