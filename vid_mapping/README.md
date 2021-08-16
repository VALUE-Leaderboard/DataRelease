# Vid Mapping
This folder aims to provide
- [YouTube videos] the mapping of vids in VALUE release to the original YouTube ids and start/end timestamps
- [TV videos] release plan for TV video versions. 

## YouTube Videos
### VATEX
VATEX video ids are formatted as `{YouTubeID}_{StartTime}_{EndTime}`, which should already allow you to track back the their YouTube ids and timestamps.

### YouCook2
We preprocess the original long YouTube videos into video clips according to the `segment` provided in its original annotations (you can find it [here](http://youcook2.eecs.umich.edu/download)).  

To give an example, `iuQjb1-WAzs_0` is the first segment with segment id `0` for video `iuQjb1-WAzs`.

### How2
Please find the mapping from our video ids (mostly numerical) to the original YouTube video ids and the associated timestamps in [`how2_vid_mapping.json`](https://github.com/VALUE-Leaderboard/DataRelease/blob/main/vid_mapping/how2_vid_mapping.json). 

There is a fraction of videos that we failed to map back to YouTube ids due to some information loss during the annotation process. If you wish to get the raw videos for these unmapped ones, please send your inquiry to `lindsey DOT li AT microsoft DOT com`.

[Additional information on video length] The original YouTube videos are cut into 60-second long clips. For videos that are of length longer or shorter than multiple of 60 seconds, we kept some of the remaining segments in the dataset. Most of the videos (>90%) are 60-second long. 

## TV videos

### TVR/TVQA/TVC/VLEP
We are actively working on tracking back to the original purchase history to provide the version information. 

Alternatively, you can obtain the raw frames extracted at fps=3 by filling out this form (https://goo.gl/forms/HJiFJSllupqeCbax1).

### VIOLIN
We are working on to host raw frames extracted at fps=3 via a public download link. If you wish to get a copy ASAP, please send your inquiry to `lindsey DOT li AT microsoft DOT com`.
