cd src
# Batch size = 8
# Number of epochs = 5

# With CrowdHuman pretraining 
# train
python main.py tracking --exp_id mot17_half_withpretrain --dataset mot --dataset_version 17halftrain --pre_hm --ltrb_amodal --same_aug --hm_disturb 0.05 --lost_disturb 0.4 --fp_disturb 0.1 --gpus 0 --batch_size 8 --num_epochs 5 --load_model ../models/crowdhuman.pth
# test
python test.py tracking --exp_id mot17_half --dataset mot --dataset_version 17halfval --pre_hm --ltrb_amodal --track_thresh 0.4 --pre_thresh 0.5 --load_model ../exp/tracking/mot17_half/model_last.pth

# Without CrowdHuman pretraining
#train
python main.py tracking --exp_id mot17_half_nopretrain --dataset mot --dataset_version 17halftrain --pre_hm --ltrb_amodal --same_aug --hm_disturb 0.05 --lost_disturb 0.4 --fp_disturb 0.1 --gpus 0 --batch_size 8 --num_epochs 5
# test
python test.py tracking --exp_id mot17_half --dataset mot --dataset_version 17halfval --pre_hm --ltrb_amodal --track_thresh 0.4 --pre_thresh 0.5 --load_model ../exp/tracking/mot17_half/model_last.pth
cd ..
