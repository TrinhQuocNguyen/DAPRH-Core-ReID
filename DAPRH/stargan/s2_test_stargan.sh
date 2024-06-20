# 4 duke2market
LABEL_DIM=7
CROP_SIZE=128
IMG_SIZE=128
TRAIN_IMG_DIR="/old/home/ccvn/Workspace/trinh/DAPRH/data/4Gan/duke2market/train/dukemtmc"
FAKEDIR="/old/home/ccvn/Workspace/trinh/DAPRH/data/SyntheImgs/duke2market" #!!!!
BATCHSIZE=1 #!!!!
ITER=20
DOMAIN=10
CUDA_VISIBLE_DEVICES=2,3 python main.py --mode sample --dataset RaFD --rafd_crop_size $CROP_SIZE --image_size $IMG_SIZE \
               --c_dim $LABEL_DIM --rafd_image_dir $TRAIN_IMG_DIR --batch_size $BATCHSIZE\
               --sample_dir /old/home/ccvn/Workspace/trinh/DAPRH/saves/Gan-duke2market/samples \
               --log_dir /old/home/ccvn/Workspace/trinh/DAPRH/saves/Gan-duke2market/logs \
               --model_save_dir /old/home/ccvn/Workspace/trinh/DAPRH/saves/Gan-duke2market/models \
               --result_dir /old/home/ccvn/Workspace/trinh/DAPRH/saves/Gan-duke2market/results \
               --test_iters $ITER --except_domain=$DOMAIN \
               --pattern "{ID}_{CX}_f{RANDOM}.jpg" \
               --gen_dir $FAKEDIR 


