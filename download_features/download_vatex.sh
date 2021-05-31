DOWNLOAD=$1

DATASET=vatex

VIS=$DOWNLOAD/vis_features/$DATASET
if [ ! -d $VIS ] ; then
    mkdir -p $VIS
fi

BLOB='https://datarelease.blob.core.windows.net/value-leaderboard/vis_feat'

for FEAT in 'resnet' 'slowfast' 'mil-nce-s3d' 'clip-vit'; do
    if [ ! -d $VIS/$FEAT ] ; then
        wget $BLOB/$DATASET/$FEAT.tar -P $VIS
        tar -xvf $VIS/$FEAT.tar -C $VIS/$FEAT
        rm -rf $VIS/$FEAT.tar
    fi
done