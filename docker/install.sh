#!/bin/bash -Eeu

apk --update add --virtual build-dependencies build-base
gem install rspec --no-document
apk del build-dependencies build-base
rm -vrf /var/cache/apk/*
