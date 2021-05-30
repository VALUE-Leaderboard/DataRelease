DOWNLOAD=$1

DATASET=violin

VIS=$DOWNLOAD/vis_feat/
if [ ! -d $VIS ] ; then
    mkdir -p $VIS
fi

BLOB='https://datarelease.blob.core.windows.net/value-leaderboard/vis_feat'


if [ ! -d $VIS/$DATASET ] ; then
    wget $BLOB/$DATASET.tar -P $VIS
    tar -xvf $VIS/$DATASET.tar -C $VIS
    rm -rf $VIS/$DATASET.tar
fi
