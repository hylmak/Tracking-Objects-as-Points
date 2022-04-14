# Tracking Objects as Points
Simultaneous object detection and tracking using center points:
![](readme/fig2.png)
> [**Tracking Objects as Points**](http://arxiv.org/abs/2004.01177),            
> Xingyi Zhou, Vladlen Koltun, Philipp Kr&auml;henb&uuml;hl,        
> *arXiv technical report ([arXiv 2004.01177](http://arxiv.org/abs/2004.01177))*  


    @article{zhou2020tracking,
      title={Tracking Objects as Points},
      author={Zhou, Xingyi and Koltun, Vladlen and Kr{\"a}henb{\"u}hl, Philipp},
      journal={ECCV},
      year={2020}
    }

Contact: [zhouxy@cs.utexas.edu](mailto:zhouxy@cs.utexas.edu). Any questions or discussion are welcome! 

## Abstract
Tracking has traditionally been the art of following interest points through space and time. This changed with the rise of powerful deep networks. Nowadays, tracking is dominated by pipelines that perform object detection followed by temporal association, also known as tracking-by-detection. In this paper, we present a simultaneous detection and tracking algorithm that is simpler, faster, and more accurate than the state of the art. Our tracker, CenterTrack, applies a detection model to a pair of images and detections from the prior frame. Given this minimal input, CenterTrack localizes objects and predicts their associations with the previous frame. That's it. CenterTrack is simple, online (no peeking into the future), and real-time. It achieves 67.3% MOTA on the MOT17 challenge at 22 FPS and 89.4% MOTA on the KITTI tracking benchmark at 15 FPS, setting a new state of the art on both datasets. CenterTrack is easily extended to monocular 3D tracking by regressing additional 3D attributes. Using monocular video input, it achieves 28.3% AMOTA@0.2 on the newly released nuScenes 3D tracking benchmark, substantially outperforming the monocular baseline on this benchmark while running at 28 FPS.


## Features at a glance

- One-sentence method summary: Our model takes the current frame, the previous frame, and a heatmap rendered from previous tracking results as input, and predicts the current detection heatmap as well as their offsets to centers in the previous frame.

- The model can be trained on still **image datasets** if videos are not available.

- Easily extends to monocular 3d object tracking, multi-category tracking, and pose tracking.

- State-of-the-art performance on MOT17, KITTI, and nuScenes monocular tracking benchmarks.

## Main results

### Pedestrian tracking on MOT17 test set

| Detection    |  MOTA     | FPS    |
|--------------|-----------|--------|
|Public        | 61.5      |  22    |
|Private       | 67.8      |  22    |

### 2D vehicle tracking on KITTI test set (with flip test)

|  MOTA       |  FPS   |
|-------------|--------|
| 89.44       |   15   |

### 3D tracking on nuScenes test set

|  AMOTA @ 0.2  |  AMOTA  |  FPS   |
|---------------|---------|--------|
| 27.8          |    4.6  | 28     |

Besides benchmark evaluation, we also provide models for 80-category tracking and pose tracking trained on COCO. See the sample visual results below (Video files from [openpose](https://github.com/CMU-Perceptual-Computing-Lab/openpose) and [YOLO](https://pjreddie.com/darknet/yolov2/)).

<p align="center"> <img src='readme/coco_det.gif' align="center" height="230px"> </p> 

<p align="center"> <img src='readme/coco_pose.gif' align="center" height="230px"> </p>

All models and details are available in our [Model zoo](readme/MODEL_ZOO.md).

## Installation

Please refer to [INSTALL.md](readme/INSTALL.md) for installation instructions.


## Benchmark Evaluation and Training

After [installation](readme/INSTALL.md), follow the instructions in [DATA.md](readme/DATA.md) to setup the datasets. Then check [GETTING_STARTED.md](readme/GETTING_STARTED.md) to reproduce the results in the paper.
Our own scripts for reproducing the results, hyperparamter check, ablation study and new data can be found in the [experiments](experiments) folder.

## License

CenterTrack is developed upon [CenterNet](https://github.com/xingyizhou/CenterNet). Both codebases are released under MIT License themselves. Some code of CenterNet are from third-parties with different licenses, please check the CenterNet repo for details. In addition, this repo uses [py-motmetrics](https://github.com/cheind/py-motmetrics) for MOT evaluation and [nuscenes-devkit](https://github.com/nutonomy/nuscenes-devkit) for nuScenes evaluation and preprocessing. See [NOTICE](NOTICE) for detail. Please note the licenses of each dataset. Most of the datasets we used in this project are under non-commercial licenses.

