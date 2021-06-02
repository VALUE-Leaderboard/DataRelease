# Copyright (c) Microsoft Corporation.
# Licensed under the MIT license.

DOWNLOAD=$1

ANN=$DOWNLOAD/ann
if [ ! -d $ANN ] ; then
    mkdir -p $ANN
fi

TVQA='http://tvqa.cs.unc.edu/files/'
TVR='https://raw.githubusercontent.com/jayleicn/TVRetrieval/master/data/'
TVC='https://raw.githubusercontent.com/jayleicn/TVCaption/master/data/'

BLOB='https://datarelease.blob.core.windows.net/value-leaderboard'
TVBLOB=$BLOB/'tv_tasks'

# processed subtitles
wget -nc $TVR/tvqa_preprocessed_subtitles.jsonl -O $ANN/tv_subtitles.jsonl 

# TVQA annotations
if [ ! -d $ANN/tvqa ] ; then
    wget -nc $TVQA/tvqa_qa_release.tar.gz -P $ANN/
    mkdir -p $ANN/tvqa 
    tar -zxvf $ANN/tvqa_qa_release.tar.gz -C $ANN/tvqa --strip-components 1
    rm -rf $ANN/tvqa_qa_release.tar.gz
    # VALUE merged test-public with test-private for leaderboard eval
    # download the merged version
    wget -nc $TVBLOB/tvqa_test_release.jsonl -P $ANN/tvqa/
fi

# TVR annotations
if [ ! -d $ANN/tvr ] ; then
    mkdir -p $ANN/tvr
fi
for SPLIT in 'train' 'val'; do
    wget -nc $TVR/tvr_${SPLIT}_release.jsonl -P $ANN/tvr/
done

# VALUE merged test-public with test-private for leaderboard eval
# download the merged version
wget -nc $TVBLOB/tvr_test_release.jsonl -P $ANN/tvr/
wget -nc $TVBLOB/tvr_video2dur_idx.json -P $ANN/tvr/

# TVC annotations
if [ ! -d $ANN/tvc ] ; then
    mkdir -p $ANN/tvc
fi
for SPLIT in 'train' 'val' ; do
    wget -nc $TVC/tvc_${SPLIT}_release.jsonl -P $ANN/tvc/
done
wget -nc $TVBLOB/tvc_test_release.jsonl -P $ANN/tvc/


