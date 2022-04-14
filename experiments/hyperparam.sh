# Batch size = 8
# Number of epochs = 30
# Number of GPU = 1

cd src
# Learning rate = 1.25e-4
# train
python main.py tracking --exp_id mot17_half --dataset mot --dataset_version 17halftrain --pre_hm --ltrb_amodal --same_aug --hm_disturb 0.05 --lost_disturb 0.4 --fp_disturb 0.1 --gpus 0 --batch_size 8 --num_epochs 30 --load_model ../models/crowdhuman.pth
# test
python test.py tracking --exp_id mot17_half --dataset mot --dataset_version 17halfval --pre_hm --ltrb_amodal --track_thresh 0.4 --pre_thresh 0.5 --load_model ../exp/tracking/mot17_half/model_last.pth

# Learning rate = 7.5e-5
# train
python main.py tracking --exp_id mot17_half --dataset mot --dataset_version 17halftrain --pre_hm --ltrb_amodal --same_aug --hm_disturb 0.05 --lost_disturb 0.4 --fp_disturb 0.1 --gpus 0 --batch_size 8 --num_epochs 30 --lr 7.5e-5 --load_model ../models/crowdhuman.pth
# test
python test.py tracking --exp_id mot17_half --dataset mot --dataset_version 17halfval --pre_hm --ltrb_amodal --track_thresh 0.4 --pre_thresh 0.5 --load_model ../exp/tracking/mot17_half/model_last.pth
cd ..
