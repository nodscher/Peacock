#!/bin/sh

yarn install && yarn build && sh ./packaging/ciAssemble.sh linux && sh ./packaging/ciAssemble.sh
