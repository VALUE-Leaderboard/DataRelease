# Data Facts

## Video Question Answering

### TVQA

[Paper](https://arxiv.org/abs/1809.01696), [Dataset Website](https://tvqa.cs.unc.edu/)

TVQA is a video question answering dataset based on 6 TV shows. Its annotations can be downloaded by:
```
bash download_annotations/download_tv_annotations.sh $DATA_DIR
```
`$DATA_DIR` is the directory storing the downloaded annotations. There are 3 annotation files as list below:

| Split | #examples | Filename | 
| --- | --- | --- | 
| train | 122,039 | tvqa_train.jsonl | 
| val | 15,253 | tvqa_val.jsonl | 
| test | 15,253 | tvqa_test_release.jsonl |

The files are in [JSON Lines](https://jsonlines.org/) format. Each line can be loaded as a Python dict with the following entries:
```
{
  "a0": "Because Sheldon is being rude.",  # str, candidate answers
  "a1": "Because he doesn't like Sheldon.",
  "a2": "Because they are having an argument.",
  "a3": "Because Howard wanted to have a private meal with Raj.",
  "a4": "Because Sheldon won't loan him money for food.",
  "answer_idx": 2,  # int, ground-truth answer id
  "q": "Why is Howard ...",  # str, question
  "qid": 122039,  # int, unique question id
  "show_name": "The Big Bang Theory",  # name of the TV show
  "ts": "20.16-25.12",  # start and end timestamps of the question
  "vid_name": "s03e02_seg02_clip_10"  # video name
}
```

### How2QA

[Paper](https://arxiv.org/abs/2005.00200)

How2QA is a video question answering dataset based on YouTube videos. Its annotations can be downloaded by:
```
bash download_annotations/download_how2_annotations.sh $DATA_DIR
```
`$DATA_DIR` is the directory storing the downloaded annotations. There are 3 annotation files as list below:

| Split | #examples | Filename | 
| --- | --- | --- | 
| train | 34,187 | how2qa_train_release.jsonl | 
| val | 3,115 | how2qa_val_release.jsonl | 
| test_public | 3,095 | how2qa_test_public_release.jsonl |

The files are in [JSON Lines](https://jsonlines.org/) format. Each line is formatted similarly to TVQA, which we detailed above.


### VIOLIN

[Paper](https://arxiv.org/abs/2003.11618)

VIOLIN is a video-and-language inference dataset based on TV show and movie videos. Its annotations can be downloaded by:
```
bash download_annotations/download_violin_annotations.sh $DATA_DIR
```
`$DATA_DIR` is the directory storing the downloaded annotations. There are 3 annotation files as list below:

| Split | #examples | Filename | 
| --- | --- | --- | 
| train | 76,122 | violin_train_release.jsonl | 
| val | 9,600 | violin_val_release.jsonl | 
| test_private | 7,722 | violin_test_private_release.jsonl |

The files are in [JSON Lines](https://jsonlines.org/) format. Each line can be loaded as a Python dict:
```
{
  "paired_id": "dh_s08e07_clip_1374_1411-2-0",  # str, each true (false) statement is paired with a false (true) statement. The paired_id for its dh_s08e07_clip_1374_1411-2-1
  "vid_name": "dh_s08e07_clip_1374_1411",  # str, video name
  "statement": "The woman with red hair ...",  # str, statement
  "example_id": 85354,  # int, unique example id
  "answer": 1  # int, ground-truth label, 1=true, 0=false
}
```


### VLEP

[Paper](https://arxiv.org/abs/2010.07999)

VLEP is a video-and-language future event prediction dataset based on TV show and YouTube Vlog videos. Its annotations can be downloaded by:

```
bash download_annotations/download_vlep_annotations.sh $DATA_DIR
```

`$DATA_DIR` is the directory storing the downloaded annotations. There are 3 annotation files as list below:

| Split | #examples | Filename |
| --- | --- | --- |
| train | 20,142 | vlep_train_release.jsonl | 
| dev | 4,392 | vlep_dev_release.jsonl | 
| test | 4,192 | vlep_test_release.jsonl | 

The files are in [JSON Lines](https://jsonlines.org/) format. Each line can be loaded as a Python dict:
```
{
  "example_id": 21411,  # int, unique example id
  "vid_name": "OO9kSxcT9Rg_subs_012_00:13:00_00:14:00_ep",  # video name.
  "ts": [10.54, 13.55],  # start and end time of the premise event (in seconds).
  "events": [  
    "The customer eats the food from the tray.",
    "The customer takes the tray of food."
  ],  # the two possible future events after the premise.
  "answer": 1,  # int, ground-truth answer idx, in {0, 1}
  "split": "dev"  # str, split
}
```

## Video Retrieval

### TVR

[Paper](https://arxiv.org/abs/2001.09099), [Dataset Website](https://tvr.cs.unc.edu/)

TVR is a video moment retrieval dataset based on 6 TV shows (the same as TVQA). Its annotations can be downloaded by:
```
bash download_annotations/download_tv_annotations.sh $DATA_DIR
```
`$DATA_DIR` is the directory storing the downloaded annotations. There are 3 annotation files as list below:

| Split | #examples | Filename | 
| --- | --- | --- | 
| train | 87,175 | tvr_train_release.jsonl | 
| val | 10,895 | tvr_val_release.jsonl | 
| test | 15,253 | tvr_test_release.jsonl |

The files are in [JSON Lines](https://jsonlines.org/) format. Each line can be loaded as a Python dict with the following entries:

```
{
  "vid_name": "friends_s04e20_seg02_clip_07",  # str, video name
  "duration": 58.03,  # int, video duration
  "ts": [50.19, 57.73],  # list(int), start and end timestamps of the moment
  "desc": "Joey closes the magazine ...",  # str, text query
  "type": "v",  # str, query type, v=video, t=subtitle, vt=video+subtitle 
  "desc_id": 93717  # int, unique desc id
}
```


### How2R

[Paper](https://arxiv.org/abs/2001.09099), [Dataset Website](https://tvr.cs.unc.edu/)

TVR is a video moment retrieval dataset based on 6 TV shows (the same as TVQA). Its annotations can be downloaded by:
```
bash download_annotations/download_tv_annotations.sh $DATA_DIR
```
`$DATA_DIR` is the directory storing the downloaded annotations. There are 3 annotation files as list below:

| Split | #examples | Filename | 
| --- | --- | --- | 
| train | 87,175 | tvr_train_release.jsonl | 
| val | 10,895 | tvr_val_release.jsonl | 
| test | 15,253 | tvr_test_release.jsonl |

The files are in [JSON Lines](https://jsonlines.org/) format. Each line can be loaded as a Python dict with the following entries:

```
{
  "vid_name": "friends_s04e20_seg02_clip_07",  # str, video name
  "duration": 58.03,  # int, video duration
  "ts": [50.19, 57.73],  # list(int), start and end timestamps of the moment
  "desc": "Joey closes the magazine ...",  # str, text query
  "type": "v",  # str, query type, v=video, t=subtitle, vt=video+subtitle 
  "desc_id": 93717  # int, unique desc id
}
```

### How2R

[Paper](https://arxiv.org/abs/2005.00200)

How2R is a video moment retrieval dataset based on YouTube videos. Its annotations can be downloaded by:
```
bash download_annotations/download_how2_annotations.sh $DATA_DIR
```
`$DATA_DIR` is the directory storing the downloaded annotations. There are 3 annotation files as list below:

| Split | #examples | Filename | 
| --- | --- | --- | 
| train | 34,187 | how2r_train_release.jsonl | 
| val | 3,115 | how2r_val_1k_release.jsonl | 
| test_public | 3,095 | how2r_test_public_1k_release.jsonl |

The files are in [JSON Lines](https://jsonlines.org/) format. Each line is formatted similarly to TVR, which we detailed above.


### VATEX-EN-R

[Paper](https://arxiv.org/abs/1904.03493), [Dataset Website](https://eric-xw.github.io/vatex-website/)

VATEX-EN-R is a video retrieval dataset based on YouTube videos, originally created for video captioning. Its annotations can be downloaded by:
```
bash download_annotations/download_vatex_en_annotations.sh $DATA_DIR
```
`$DATA_DIR` is the directory storing the downloaded annotations. There are 3 annotation files as list below:

| Split | #examples | Filename | 
| --- | --- | --- | 
| train | 259,910 | vatex_en_r_train_release.jsonl | 
| val | 30,000 | vatex_en_r_val_release.jsonl | 
| test | 60,000 | vatex_en_r_test_public_release.jsonl |

The files are in [JSON Lines](https://jsonlines.org/) format. Each line is formatted similarly to TVR, which we detailed above.


### YC2R

[Paper](https://arxiv.org/abs/1703.09788), [Dataset Website](http://youcook2.eecs.umich.edu/)

YC2R is a video retrieval dataset based on YouTube cooking videos. Its annotations can be downloaded by:
```
bash download_annotations/download_yc2_annotations.sh $DATA_DIR
```
`$DATA_DIR` is the directory storing the downloaded annotations. There are 3 annotation files as list below:

| Split | #examples | Filename | 
| --- | --- | --- | 
| train | 10,337 | yc2r_train_release.jsonl | 
| val | 3,492 | yc2r_val_release.jsonl | 
| test | 1,604 | yc2r_test_release.jsonl |

The files are in [JSON Lines](https://jsonlines.org/) format. Each line is formatted similarly to TVR, which we detailed above.


### video2dur_idx

Each of the retrieval datasets is also accompanied by a `video2dur_idx` file, containing mappings from video name to video duration and video idx (used for submission). For example, `tvr_video2dur_idx.json` is for TVR, each entry in this file is:
```
{
  "castle_s01e01_seg02_clip_20": [
    91.56,  # float, video duration 
    0  # video id, used for retrieval submission
  ],
  ...
}
```


## Video Captioning

### TVC

[Paper](https://arxiv.org/abs/2001.09099), [Dataset Website](https://tvr.cs.unc.edu/tvc.html)

TVC is a video captioning dataset based on 6 TV shows (the same as TVQA). It shares some of the annotations with TVR. Its annotations can be downloaded by:
```
bash download_annotations/download_tv_annotations.sh $DATA_DIR
```
`$DATA_DIR` is the directory storing the downloaded annotations. There are 3 annotation files as list below:

| Split | #examples | Filename | 
| --- | --- | --- | 
| train | 86,603 | tvc_train_release.jsonl | 
| val | 10,895 | tvc_val_release.jsonl | 
| test | 15,253 | tvc_test_release.jsonl |

The files are in [JSON Lines](https://jsonlines.org/) format. Each line can be loaded as a Python dict with the following entries:

```
{
  "vid_name": "grey_s03e12_seg02_clip_17",  # video id
  "duration": 94.03,  # float, duration of the video
  "ts": [35.73, 40.9],  # list(float), start and end timestamps of the clip
  "descs": [
    {
      "desc": "Meredith walks into the kitchen...", # str, description of the clip
      "desc_id": 62633,  # int, unique desc id
      "type": "v",  # str, desc type, v=video, t=subtitle, vt=video+subtitle 
      "from_retrieval": true  # bool, true if it is shared with TVR, false otherwise
    },
    ...  # each clip in train has 2 captions, each clip in {val, test} has 4 captions.
  ],
  "clip_id": 86602  # int, unique clip id
}
```


### VATEX-EN-C

[Paper](https://arxiv.org/abs/1904.03493), [Dataset Website](https://eric-xw.github.io/vatex-website/)

VATEX-EN-C is a video captioning dataset based on YouTube videos (the same as VATEX-EN-R). Its annotations can be downloaded by:
```
bash download_annotations/download_vatex_annotations.sh $DATA_DIR
```
`$DATA_DIR` is the directory storing the downloaded annotations. There are 3 annotation files as list below:

| Split | #examples | Filename | 
| --- | --- | --- | 
| train | 25,991 | vatex_en_c_train_release.jsonl | 
| val | 3,000 | vatex_en_c_val_release.jsonl | 
| test_private | 6,278 | vatex_en_c_test_private_release.jsonl |

The files are in [JSON Lines](https://jsonlines.org/) format. Each line is formatted similarly to TVC, which we detailed above.


### YC2C

[Paper](https://arxiv.org/abs/1703.09788), [Dataset Website](http://youcook2.eecs.umich.edu/)

YC2C is a video captioning dataset based on YouTube cooking videos (the same as YC2R). Its annotations can be downloaded by:
```
bash download_annotations/download_yc2_annotations.sh $DATA_DIR
```
`$DATA_DIR` is the directory storing the downloaded annotations. There are 3 annotation files as list below:

| Split | #examples | Filename | 
| --- | --- | --- | 
| train | 25,991 | yc2c_train_release.jsonl | 
| val | 3,000 | yc2c_val_release.jsonl | 
| test | 6,278 | yc2c_test_release.jsonl |

The files are in [JSON Lines](https://jsonlines.org/) format. Each line is formatted similarly to TVC, which we detailed above.


## Subtitle Files

For each video, we also provided their associated subtitle files. For example, `tv_subtiles.jsonl` contains the subtitle files for TVR, TVC, TVQA and part of VLEP. This file is also in [JSON Lines](https://jsonlines.org/) format. Each line is:

```
{
  "vid_name": "house_s02e05_seg02_clip_11",  # str, video name
  "sub": [
    {
      "text": " Chase : That's all this is?",  # str, subtitle text
      "start": 0.862,  # float, start timestamp of the subtitle
      "end": 1.862  # float, end timestamp of the subtitle
    },
    ...
  ]
}
```

## License

As per the original authors, the annotations for TVQA, TVR, TVC, VIOLIN, YouCookII, VLEP, How2QA, How2R are under [CC BY-NC-SA 4.0 license](https://creativecommons.org/licenses/by-nc-sa/4.0/), the annotations for VATEX are under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/).
