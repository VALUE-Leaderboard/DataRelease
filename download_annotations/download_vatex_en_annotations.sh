# Copyright (c) Microsoft Corporation.
# Licensed under the MIT license.

DOWNLOAD=$1

ANN=$DOWNLOAD/ann
if [ ! -d $ANN ] ; then
    mkdir -p $ANN
fi
BLOB='https://datarelease.blob.core.windows.net/value-leaderboard'
VATEXR=$BLOB/'vatex_en_r'

# processed subtitles
wget -nc $VATEXR/vatex_subtitles.jsonl -O $ANN/vatex_subtitles.jsonl

# VATEX_EN_R annotations
if [ ! -d $ANN/vatex_en_r ] ; then
    mkdir -p $ANN/vatex_en_r
fi
for SPLIT in 'train' 'val' 'test_public'; do
    wget -nc $VATEXR/vatex_en_r_${SPLIT}_release.jsonl -O $ANN/vatex_en_r/vatex_en_r_${SPLIT}_release.jsonl 
done
wget -nc $VATEXR/vatex_en_r_video2dur_idx.json -O $ANN/vatex_en_r/vatex_en_r_video2dur_idx.json 

VATEXC=$BLOB/'vatex_en_c'

# VATEX_EN_C annotations
if [ ! -d $ANN/vatex_en_c ] ; then
    mkdir -p $ANN/vatex_en_c
fi
for SPLIT in 'train' 'val' 'test_public' 'test_private'; do
    wget -nc $VATEXC/vatex_en_c_${SPLIT}_release.jsonl -O $ANN/vatex_en_c/vatex_en_c_${SPLIT}_release.jsonl
done
