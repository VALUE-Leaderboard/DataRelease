# Copyright (c) Microsoft Corporation.
# Licensed under the MIT license.

DOWNLOAD=$1

ANN=$DOWNLOAD/ann
if [ ! -d $ANN ] ; then
    mkdir -p $ANN
fi
BLOB='https://datarelease.blob.core.windows.net/value-leaderboard'
YC2R=$BLOB/'yc2r'

# processed subtitles
wget -nc $YC2R/yc2_subtitles.jsonl -O $ANN/yc2_subtitles.jsonl

# How2R annotations
if [ ! -d $ANN/yc2r ] ; then
    mkdir -p $ANN/yc2r
fi
for SPLIT in 'train' 'val' 'test'; do
    wget -nc $YC2R/yc2r_${SPLIT}_release.jsonl -O $ANN/yc2r/yc2r_${SPLIT}_release.jsonl 
done
wget -nc $YC2R/yc2r_video2dur_idx.json -O $ANN/yc2r/yc2r_video2dur_idx.json 

YC2C=$BLOB/'yc2c'

# How2QA annotations
if [ ! -d $ANN/yc2c ] ; then
    mkdir -p $ANN/yc2c
fi
for SPLIT in 'train' 'val' 'test'; do
    wget -nc $YC2C/yc2c_${SPLIT}_release.jsonl -O $ANN/yc2c/yc2c_${SPLIT}_release.jsonl
done
