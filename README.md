# VALUE Data Release

This repo contains scripts for downloading **visual features**, **subtitles** and **annotations** of all VALUE tasks. 

Due to copyright issue, we could not release the raw videos. However, we will also provide all the YouTube ids/TV episode versions along with their original timestamps to facilitate future end-to-end training on VALUE benchmark.

## Release Plan

- Visual features
  - [x] ResNet
  - [x] [SlowFast](https://github.com/facebookresearch/SlowFast)
  - [x] [MIL-NCE-S3D](https://github.com/antoine77340/S3D_HowTo100M)
  - [x] [CLIP-ViT](https://github.com/openai/CLIP)
- [x] Subtitles
- [x] Annotations
- [x] Original video ids and timestamps for YouTube videos


## Annotations
Please see [DATA.md](./DATA.md).

## Visual Feature Extraction

We extract frame-level features at a fixed frame rate (1 feature every 1.5 seconds) and save them into .npz file per video.  To reproduce the feature extraction process, please follow the instructions and code released at [here](https://github.com/linjieli222/HERO_Video_Feature_Extractor).


## License

Our features are released under [CC BY-NC-SA 4.0 license](https://creativecommons.org/licenses/by-nc-sa/4.0/). For annotations, please see [DATA.md](./DATA.md).
<!-- Shield: [![CC BY-NC 4.0][cc-by-nc-shield]][cc-by-nc] -->
<!-- The VALUE benchmark  is licensed under a
[Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License][cc-by-nc].

[![CC BY-NC 4.0][cc-by-nc-image]][cc-by-nc]

[cc-by-nc]: https://creativecommons.org/licenses/by-nc-sa/4.0/
[cc-by-nc-image]: https://licensebuttons.net/l/by-nc-sa/4.0/88x31.png
[cc-by-nc-shield]: https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg -->
