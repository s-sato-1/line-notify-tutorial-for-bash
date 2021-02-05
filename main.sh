#!/bin/bash

. ./config/config.txt


readonly TOKEN=${TOKEN}
readonly API=https://notify-api.line.me/api/notify


send () {
    MSG=${1}
    curl -X POST -H "Authorization: Bearer ${TOKEN}" -F "message=${MSG}" ${API}
}

send 'こんにちは'
send 'hello'
