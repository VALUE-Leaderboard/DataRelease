# Copyright (c) Microsoft Corporation.
# Licensed under the MIT license.

DOWNLOAD=$1

ANN=$DOWNLOAD/ann
if [ ! -d $ANN ] ; then
    mkdir -p $ANN
fi
BLOB='https://datarelease.blob.core.windows.net/value-leaderboard'
VIOLIN=$BLOB/'violin'

# processed subtitles
wget -nc $VIOLIN/violin_subtitles.jsonl -O $ANN/violin_subtitles.jsonl

# How2R annotations
if [ ! -d $ANN/violin ] ; then
    mkdir -p $ANN/violin
fi
for SPLIT in 'train' 'val' 'test' 'test_private'; do
    wget -nc $VIOLIN/violin_${SPLIT}_release.jsonl -O $ANN/violin/violin_${SPLIT}_release.jsonl 
done
