# Copyright (c) Microsoft Corporation.
# Licensed under the MIT license.

DOWNLOAD=$1

ANN=$DOWNLOAD/ann
if [ ! -d $ANN ] ; then
    mkdir -p $ANN
fi

VLEP='https://raw.githubusercontent.com/jayleicn/VideoLanguageFuturePred/main/data/'

if [ ! -d $ANN/vlep ] ; then
    mkdir -p $ANN/vlep
fi

# processed subtitles
wget -nc $VLEP/vlep_subtitles.jsonl -P $ANN/vlep/

# annotations
for SPLIT in 'train' 'dev' 'test'; do
    wget -nc $VLEP/vlep_${SPLIT}_release.jsonl -P $ANN/vlep/
done
