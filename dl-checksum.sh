#!/usr/bin/env sh
set -e
DIR=~/Downloads
MIRROR=https://snapshots.mitmproxy.org

dl() {
    local ver=$1
    local os=$2
    local archive_type=${3:-tar.gz}
    local file=mitmproxy-${ver}-${os}.${archive_type}
    local lfile=$DIR/$file
    local url=$MIRROR/${ver}/${file}

    if [ ! -e $lfile ]; then
        curl -sSLf -o $lfile $url
    fi

    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $os $(sha256sum $lfile | awk '{print $1}')
}

dl_ver() {
    local ver=$1
    printf "  '%s':\n" $ver
    dl $ver linux
    dl $ver macos
    dl $ver windows zip
}

dl_ver ${1:-10.0.0}
