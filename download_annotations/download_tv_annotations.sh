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

# processed subtitles
wget -nc $TVR/tvqa_preprocessed_subtitles.jsonl -O $ANN/tv_subtitles.jsonl 

# TVQA annotations
if [ ! -d $ANN/tvqa ] ; then
    wget -nc $TVQA/tvqa_qa_release.tar.gz -P $ANN/
    mkdir -p $ANN/tvqa 
    tar -zxvf $ANN/tvqa_qa_release.tar.gz -C $ANN/tvqa --strip-components 1
    rm -rf $ANN/tvqa_qa_release.tar.gz
fi

# TVR annotations
if [ ! -d $ANN/tvr ] ; then
    mkdir -p $ANN/tvr
fi
for SPLIT in 'train' 'val' 'test_public'; do
    wget -nc $TVR/tvr_${SPLIT}_release.jsonl -P $ANN/tvr/
done
wget -nc $TVR/tvr_video2dur_idx.json -P $ANN/tvr/

# TVC annotations
if [ ! -d $ANN/tvc ] ; then
    mkdir -p $ANN/tvc
fi
for SPLIT in 'train' 'val' 'test_public'; do
    wget -nc $TVC/tvc_${SPLIT}_release.jsonl -P $ANN/tvc/
done


