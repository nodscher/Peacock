#!/bin/sh

yarn install && yarn build && mkdir build && sh ./packaging/ciAssemble.sh linux # && sh ./packaging/ciAssemble.sh
