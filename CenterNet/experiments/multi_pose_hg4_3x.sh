cd src
# train
python main.py multi_pose --exp_id test_hg4 --dataset thermal_pose --arch hourglass4 --batch_size 4 --lr 2.5e-4 --input_res 256 --load_model ../models/poseae/checkpoint.pth --gpus 0 --num_epochs 2 --val_intervals 1
# or use the following command if your have dla_1x trained
# python main.py multi_pose --exp_id hg_3x --dataset coco_hp  --arch hourglass --batch_size 24 --master_batch 4 --lr 2.5e-4 --gpus 0,1,2,3,4 --num_epochs 150 --lr_step 130 --load_model ../exp/multi_pose/hg_1x/model_40.pth --resume
# test
#python test.py multi_pose --exp_id hg_3x --dataset thermal_pose --arch hourglass --input_res 512 --load_model ../models/multi_pose_hg_3x.pth
# flip test
#python test.py multi_pose --exp_id hg_3x --dataset coco_hp --arch hourglass --keep_res --resume --flip_test
cd ..