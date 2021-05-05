# Copyright (c) Microsoft Corporation.
# Licensed under the MIT license.

DOWNLOAD=$1

ANN=$DOWNLOAD/ann
if [ ! -d $ANN ] ; then
    mkdir -p $ANN
fi
BLOB='https://datarelease.blob.core.windows.net/value-leaderboard'
HOW2R=$BLOB/'how2r'

# processed subtitles
wget -nc $HOW2R/how2_subtitles.jsonl -O $ANN/how2_subtitles.jsonl

# How2R annotations
if [ ! -d $ANN/how2r ] ; then
    mkdir -p $ANN/how2r
fi
for SPLIT in 'train' 'val_1k' 'test_public_1k'; do
    wget -nc $HOW2R/how2r_${SPLIT}_release.jsonl -O $ANN/how2r/how2r_${SPLIT}_release.jsonl 
done
wget -nc $HOW2R/how2r_video2dur_idx.json -O $ANN/how2r/how2r_video2dur_idx.json 

HOW2QA=$BLOB/'how2qa'

# How2QA annotations
if [ ! -d $ANN/how2qa ] ; then
    mkdir -p $ANN/how2qa
fi
for SPLIT in 'train' 'val' 'test_public'; do
    wget -nc $HOW2QA/how2qa_${SPLIT}_release.jsonl -O $ANN/how2qa/how2qa_${SPLIT}_release.jsonl
done
